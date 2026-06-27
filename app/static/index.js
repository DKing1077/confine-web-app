let prefix = 'search';

document.addEventListener("DOMContentLoaded", () => {

    /* ---------------- SEARCH ---------------- */

    const form = document.getElementById("search_form");
    const resultsDiv = document.getElementById("results");
    const searchDiv = document.getElementById("search");
    const workspaceDiv = document.getElementById("workspace_list");
    const addBtn = document.getElementById("add_btn");

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

            resultsDiv.innerHTML = `route: ${data.route} &nbsp; success: ${data.status} &nbsp; message: ${data.job_id}`;

            renderResults(data.result, searchDiv);

            form.reset();

        } catch (err) {
            resultsDiv.innerHTML = `<p style="color:red;">Error: ${err}</p>`;
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

            div.classList.add("search-result-item");

            div.addEventListener("click", () => {
                div.classList.toggle("selected");
            });

            container.appendChild(div);
        });
    }

    /* ---------------- WORKSPACE ADD ---------------- */

    async function addSelectedToPanel(targetPanel) {
        const selected = document.querySelectorAll(".search-result-item.selected");

        const track_ids = Array.from(selected).map(el => el.dataset.id);

        if (track_ids.length === 0) {
            resultsDiv.innerHTML = `route: add_to_panel &nbsp; success: error &nbsp; message: no tracks selected`;
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

            resultsDiv.innerHTML = `route: ${data.route} &nbsp; success: ${data.status} &nbsp; message: items added`;

            const workspaceData = data.result;

            if (Array.isArray(workspaceData)) {
                renderWorkspace(workspaceData, workspaceDiv);
            } else {
                workspaceDiv.textContent = "No workspace data returned";
            }

            selected.forEach(el => el.classList.remove("selected"));

        } catch (err) {
            console.error(err);
            resultsDiv.innerHTML = `<p style="color:red;">Error: ${err}</p>`;
        }
    }

    if (addBtn) {
        addBtn.addEventListener("click", () => {
            addSelectedToPanel("workspace");
        });
    }

    /* ---------------- WORKSPACE RENDER (NEW FEATURE) ---------------- */

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
            title.classList.add("workspace-title");
            title.textContent = `${item.artist_name} - ${item.track_name}`;

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
            });

            // selection logic - toggle on title click only
            title.addEventListener("click", () => {
                title.classList.toggle("selected");
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
        });
    });
});
