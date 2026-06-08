let prefix = 'search';

document.addEventListener("DOMContentLoaded", () => {

    /* ---------------- SEARCH ---------------- */

    const form = document.getElementById("search_form");
    const resultsDiv = document.getElementById("results");
    const searchDiv = document.getElementById("search");

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
                job_id: ${data.job_id}`;

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
            container.appendChild(div);
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
