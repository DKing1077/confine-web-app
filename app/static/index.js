let prefix = 'search';

document.addEventListener("DOMContentLoaded", () => {

    /* ---------------- SEARCH ---------------- */

    const form = document.getElementById("search_form");
    const resultsDiv = document.getElementById("results");
    const searchDiv = document.getElementById("search");
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

            resultsDiv.innerHTML = `
                route: ${data.route}<br>
                status: ${data.status}<br>
                job_id: ${data.job_id}
            `;

            const results = data.result;
            renderResults(results, searchDiv);

            form.reset();

        } catch (err) {
            resultsDiv.innerHTML = `<p style="color:red;">Error: ${err}</p>`;
        }
    });

    function renderResults(data, container) {
        container.innerHTML = "";

        console.log(data);
        console.log(typeof data);
        console.log("JSON STRING:\n", JSON.stringify(data, null, 2));

        if (!Array.isArray(data) || data.length === 0) {
            container.textContent = "No results";
            return;
        }

        data.forEach(item => {
            const div = document.createElement("div");

            div.textContent = `${item.artist_name} - ${item.track_name}`;

            div.dataset.id = item.commontrack_id;
            div.dataset.artist = item.artist_name;
            div.dataset.track = item.track_name;

            div.classList.add("selectable");

            div.addEventListener("click", () => {
                div.classList.toggle("selected");
            });

            container.appendChild(div);
        });
    }

    /* ---------------- ADD SELECTED ---------------- */

    async function addSelectedToPanel(targetPanel) {
        const selected = document.querySelectorAll(".selected");

        const items = Array.from(selected).map(el => ({
            commontrack_id: el.dataset.id,
            artist_name: el.dataset.artist,
            track_name: el.dataset.track
        }));

        if (items.length === 0) return;

        const token = localStorage.getItem("access_token");

        await fetch("/tabs/add_to_panel", {
            method: "POST",
            credentials: "include",
            headers: {
                "Content-Type": "application/json",
                ...(token && { "Authorization": `Bearer ${token}` })
            },
            body: JSON.stringify({
                panel: targetPanel,
                items: items
            })
        });

        selected.forEach(el => el.classList.remove("selected"));
    }

    if (addBtn) {
        addBtn.addEventListener("click", () => {
            addSelectedToPanel("workspace");
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