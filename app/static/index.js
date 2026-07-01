let prefix = 'search';

document.addEventListener("DOMContentLoaded", () => {

    /* ---------------- SEARCH ---------------- */

    const form = document.getElementById("search_form");
    const resultsDiv = document.getElementById("results");
    const searchDiv = document.getElementById("search");
    const workspaceDiv = document.getElementById("workspace_list");
    const addBtn = document.getElementById("add_btn");
    const removeBtn = document.getElementById("remove_btn"); // optional
    const modeSelect = document.getElementById("mode_select");
    const processBtn = document.getElementById("process_btn");

    // optional future tab containers (safe if missing)
    const favoritesSearchDiv = document.getElementById("favorites_search");

    // ---------- page state persistence (minimal) ----------
    const PAGE_STATE_KEY = "index_page_state_v1";

    function savePageState() {
        const activePanel = document.querySelector(".panel.active")?.id || "search";
        sessionStorage.setItem(PAGE_STATE_KEY, JSON.stringify({
            resultsHTML: resultsDiv?.innerHTML || "",
            searchHTML: searchDiv?.innerHTML || "",
            workspaceHTML: workspaceDiv?.innerHTML || "",
            activePanel
        }));
    }

    function restorePageState() {
        const raw = sessionStorage.getItem(PAGE_STATE_KEY);
        if (!raw) return;

        try {
            const state = JSON.parse(raw);

            if (resultsDiv) resultsDiv.innerHTML = state.resultsHTML || "";
            if (searchDiv) searchDiv.innerHTML = state.searchHTML || "";
            if (workspaceDiv) workspaceDiv.innerHTML = state.workspaceHTML || "";

            // restore active tab/panel
            const activePanel = state.activePanel || "search";
            const tabs = document.querySelectorAll(".tab");
            const panels = document.querySelectorAll(".panel");

            tabs.forEach(t => t.classList.toggle("active", t.dataset.tab === activePanel));
            panels.forEach(p => p.classList.toggle("active", p.id === activePanel));

            // re-bind clickable/selectable items restored from innerHTML
            document.querySelectorAll(".panel .selectable-item").forEach(div => {
                div.addEventListener("click", () => {
                    div.classList.toggle("selected");
                    savePageState();
                });
            });

            workspaceDiv?.querySelectorAll(".lyrics-toggle").forEach(toggle => {
                toggle.addEventListener("click", (e) => {
                    e.stopPropagation();
                    const wrapper = toggle.closest(".workspace-item");
                    const lyricsBox = wrapper?.querySelector(".lyrics-box");
                    if (!lyricsBox) return;

                    const isOpen = lyricsBox.style.display === "block";
                    lyricsBox.style.display = isOpen ? "none" : "block";
                    toggle.classList.toggle("open", !isOpen);
                    savePageState();
                });
            });

        } catch (e) {
            console.warn("Failed to restore page state:", e);
        }
    }

    // Exposed so auth/session logout flow can clear UI instantly when on this page
    function clearIndexUI() {
        sessionStorage.removeItem(PAGE_STATE_KEY);

        if (resultsDiv) resultsDiv.innerHTML = "";

        if (searchDiv) searchDiv.textContent = "SEARCH PANEL";
        if (workspaceDiv) workspaceDiv.innerHTML = "";

        const idsToClear = [
            "concepts_list",
            "semantics_list",
            "instructions_list",
            "input_list",
            "output_list",
            "favorites_search"
        ];

        idsToClear.forEach(id => {
            const el = document.getElementById(id);
            if (el) el.innerHTML = "";
        });

        // reset to search tab
        const tabs = document.querySelectorAll(".tab");
        const panels = document.querySelectorAll(".panel");
        tabs.forEach(t => t.classList.toggle("active", t.dataset.tab === "search"));
        panels.forEach(p => p.classList.toggle("active", p.id === "search"));
    }

    window.clearIndexUI = clearIndexUI;

    form.addEventListener("submit", async (e) => {
        e.preventDefault();

        const input = document.getElementById("search_input").value;
        const token = localStorage.getItem("access_token");

        try {
            const response = await fetch(`/${prefix}`, {
                method: "POST",
                credentials: "include",
                headers: {
                    "Content-Type": "application/json",
                    ...(token && { "Authorization": `Bearer ${token}` })
                },
                body: JSON.stringify({
                    search_input: input
                })
            });

            const data = await response.json();

            resultsDiv.innerHTML = `route: ${data.route} &nbsp; status: ${data.status} &nbsp; message: ${data.job_id}`;

            renderResults(data.result, searchDiv);
            savePageState();

            form.reset();

        } catch (err) {
            resultsDiv.innerHTML = `<p style="color:red;">Error: ${err}</p>`;
            savePageState();
        }
    });

    function formatFeatures(features) {
        if (!features || !features.length) return "";
        return ` feat. ${features.join(", ")}`;
    }

    function renderResults(data, container) {
        container.innerHTML = "";

        if (!Array.isArray(data) || data.length === 0) {
            container.textContent = "No results";
            return;
        }

        data.forEach(item => {
            const div = document.createElement("div");

            div.textContent =
                `${item.artist_name} - ${item.track_name}${formatFeatures(item.features)}`;

            div.dataset.id = item.commontrack_id;
            div.dataset.artist = item.artist_name;
            div.dataset.track = item.track_name;

            div.classList.add("search-result-item", "selectable-item");

            div.addEventListener("click", () => {
                div.classList.toggle("selected");
                savePageState();
            });

            container.appendChild(div);
        });
    }

    function getSelectedIds(container) {
        return Array.from(container.querySelectorAll(".selectable-item.selected"))
            .map(el => el.dataset.id)
            .filter(Boolean);
    }

    function getActivePanelId() {
        const active = document.querySelector(".panel.active");
        return active ? active.id : null;
    }

    function getSourceDivForAdd() {
        const activeId = getActivePanelId();

        if (activeId === "search") return searchDiv;
        if (activeId === "favorites_search" && favoritesSearchDiv) return favoritesSearchDiv;

        return searchDiv; // fallback
    }

    function getPanelListEl(panelId) {
        if (!panelId) return null;
        if (panelId === "workspace") return document.getElementById("workspace_list");
        return document.getElementById(`${panelId}_list`);
    }

    function renderGenericPanel(data, container) {
        container.innerHTML = "";

        if (!Array.isArray(data) || data.length === 0) {
            container.textContent = "No data";
            return;
        }

        data.forEach(item => {
            const div = document.createElement("div");
            div.classList.add("search-result-item", "selectable-item");
            div.dataset.id = item.commontrack_id || item.id || "";
            div.textContent = `${item.artist_name || ""}${item.artist_name ? " - " : ""}${item.track_name || item.name || "item"}`;

            div.addEventListener("click", () => {
                div.classList.toggle("selected");
                savePageState();
            });

            container.appendChild(div);
        });
    }

    /* ---------------- ADD (workspace only) ---------------- */

    async function addSelectedToPanel(targetPanel, sourceContainer = searchDiv) {
        const track_ids = getSelectedIds(sourceContainer);

        if (track_ids.length === 0) {
            resultsDiv.innerHTML = `route: add_to_panel &nbsp; status: error &nbsp; message: no tracks selected`;
            savePageState();
            return;
        }

        const token = localStorage.getItem("access_token");

        try {
            const response = await fetch("/tabs/add_to_panel", {
                method: "POST",
                credentials: "include",
                headers: {
                    "Content-Type": "application/json",
                    ...(token && { "Authorization": `Bearer ${token}` })
                },
                body: JSON.stringify({
                    panel: targetPanel,
                    items: track_ids
                })
            });

            const data = await response.json();

            resultsDiv.innerHTML = `route: ${data.route} &nbsp; status: ${data.status} &nbsp; message: items added`;

            const workspaceData = data.result;

            if (Array.isArray(workspaceData)) {
                renderWorkspace(workspaceData, workspaceDiv);
            } else {
                workspaceDiv.textContent = "No workspace data returned";
            }

            sourceContainer.querySelectorAll(".selectable-item.selected")
                .forEach(el => el.classList.remove("selected"));

            savePageState();

        } catch (err) {
            console.error(err);
            resultsDiv.innerHTML = `<p style="color:red;">Error: ${err}</p>`;
            savePageState();
        }
    }

    if (addBtn) {
        addBtn.addEventListener("click", () => {
            addSelectedToPanel("workspace", getSourceDivForAdd());
        });
    }

    /* ---------------- REMOVE (active tab) ---------------- */

    async function removeSelectedFromPanel(targetPanel, sourceContainer) {
        const track_ids = getSelectedIds(sourceContainer);

        if (track_ids.length === 0) {
            resultsDiv.innerHTML = `route: remove_from_panel &nbsp; status: error &nbsp; message: no tracks selected`;
            savePageState();
            return;
        }

        const token = localStorage.getItem("access_token");

        try {
            const response = await fetch("/tabs/remove_from_panel", {
                method: "POST",
                credentials: "include",
                headers: {
                    "Content-Type": "application/json",
                    ...(token && { "Authorization": `Bearer ${token}` })
                },
                body: JSON.stringify({
                    panel: targetPanel,
                    items: track_ids
                })
            });

            const data = await response.json();

            resultsDiv.innerHTML = `route: ${data.route} &nbsp; status: ${data.status} &nbsp; message: items removed`;

            const panelData = data.result;
            const targetContainer = getPanelListEl(targetPanel);

            if (targetContainer) {
                if (targetPanel === "workspace") {
                    renderWorkspace(panelData, targetContainer);
                } else {
                    renderGenericPanel(panelData, targetContainer);
                }
            }

            sourceContainer.querySelectorAll(".selectable-item.selected")
                .forEach(el => el.classList.remove("selected"));

            savePageState();

        } catch (err) {
            console.error(err);
            resultsDiv.innerHTML = `<p style="color:red;">Error: ${err}</p>`;
            savePageState();
        }
    }

    if (removeBtn) {
        removeBtn.addEventListener("click", () => {
            const activePanelId = getActivePanelId();
            const sourceContainer = getPanelListEl(activePanelId);

            if (!activePanelId || activePanelId === "search" || !sourceContainer) {
                resultsDiv.innerHTML = `route: remove_from_panel &nbsp; status: error &nbsp; message: open a panel tab and highlight items to remove`;
                savePageState();
                return;
            }

            removeSelectedFromPanel(activePanelId, sourceContainer);
        });
    }

    /* ---------------- PROCESS ---------------- */

    async function processSelectedItems() {
        const sourceContainer = getSourceDivForAdd();
        const track_ids = getSelectedIds(sourceContainer);

        if (track_ids.length === 0) {
            resultsDiv.innerHTML = `route: process_items &nbsp; status: error &nbsp; message: no tracks selected`;
            savePageState();
            return;
        }

        const mode = (modeSelect?.value || "Transform").toLowerCase();
        const route = mode === "analyze" ? "/analyze_items" : "/transform_items";
        const token = localStorage.getItem("access_token");

        try {
            const response = await fetch(route, {
                method: "POST",
                credentials: "include",
                headers: {
                    "Content-Type": "application/json",
                    ...(token && { "Authorization": `Bearer ${token}` })
                },
                body: JSON.stringify({
                    items: track_ids
                })
            });

            const data = await response.json();
            resultsDiv.innerHTML = `route: ${data.route || route} &nbsp; status: ${data.status || response.status} &nbsp; message: process started`;
            savePageState();

        } catch (err) {
            console.error(err);
            resultsDiv.innerHTML = `<p style="color:red;">Error: ${err}</p>`;
            savePageState();
        }
    }

    if (processBtn) {
        processBtn.addEventListener("click", processSelectedItems);
    }

    /* ---------------- WORKSPACE RENDER ---------------- */

    function renderWorkspace(data, container) {
        container.innerHTML = "";

        if (!Array.isArray(data) || data.length === 0) {
            container.textContent = "No workspace data returned";
            return;
        }

        data.forEach(item => {

            const wrapper = document.createElement("div");
            wrapper.classList.add("workspace-item");

            wrapper.dataset.id = item.commontrack_id;
            wrapper.dataset.artist = item.artist_name;
            wrapper.dataset.track = item.track_name;

            // HEADER
            const header = document.createElement("div");
            header.classList.add("workspace-header");

            const title = document.createElement("div");
            title.classList.add("workspace-title", "selectable-item");
            title.textContent = `${item.artist_name} - ${item.track_name}`;
            title.dataset.id = item.commontrack_id;
            title.dataset.artist = item.artist_name;
            title.dataset.track = item.track_name;

            const toggle = document.createElement("button");
            toggle.type = "button";
            toggle.textContent = "Lyrics";
            toggle.classList.add("lyrics-toggle");

            // DROPDOWN LYRICS
            const lyricsBox = document.createElement("div");
            lyricsBox.classList.add("lyrics-box");
            lyricsBox.style.display = "none";
            lyricsBox.textContent = item.lyrics || "No lyrics available";

            toggle.addEventListener("click", (e) => {
                e.stopPropagation();
                const isOpen = lyricsBox.style.display === "block";

                lyricsBox.style.display = isOpen ? "none" : "block";
                toggle.classList.toggle("open", !isOpen);
                savePageState();
            });

            // selection logic - toggle on title click only
            title.addEventListener("click", () => {
                title.classList.toggle("selected");
                savePageState();
            });

            header.appendChild(title);
            header.appendChild(toggle);

            wrapper.appendChild(header);
            wrapper.appendChild(lyricsBox);

            container.appendChild(wrapper);
        });
    }

    /* ---------------- TABS ---------------- */

    const tabs = document.querySelectorAll(".tab");
    const panels = document.querySelectorAll(".panel");

    tabs.forEach(tab => {
        tab.addEventListener("click", () => {

            const target = tab.dataset.tab;

            tabs.forEach(t => t.classList.remove("active"));
            tab.classList.add("active");

            panels.forEach(panel => {
                panel.classList.remove("active");
                if (panel.id === target) {
                    panel.classList.add("active");
                }
            });

            savePageState();
        });
    });

    // restore previous index state on load
    restorePageState();

    // save when leaving/hidden
    window.addEventListener("beforeunload", savePageState);
    document.addEventListener("visibilitychange", () => {
        if (document.visibilityState === "hidden") savePageState();
    });
});