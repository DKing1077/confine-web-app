document.addEventListener("DOMContentLoaded", () => {

    // SEARCH
    const form = document.getElementById("search_form");
    const resultsDiv = document.getElementById("results");

    form.addEventListener("submit", async (e) => {
        e.preventDefault();

        const type = document.getElementById("mode_select").value;
        const input = document.getElementById("search_input").value;

        try {
            const response = await fetch(
                `/search?search_type=${type}&search_input=${encodeURIComponent(input)}`
            );

            const text = await response.text();
            resultsDiv.innerHTML = text;

        } catch (err) {
            resultsDiv.innerHTML = `<p style="color:red;">Error: ${err}</p>`;
        }
    });

    // TAB SWITCHING
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

    // USER STATUS (optional updater)
    // Call this after login/register response or page load hydration
    window.setUserStatus = function(username, loggedIn) {
        const statusEl = document.querySelector(".user-status .username");

        if (!statusEl) return;

        statusEl.textContent = loggedIn ? username : "unknown";

        statusEl.classList.remove("logged-in", "logged-out");
        statusEl.classList.add(loggedIn ? "logged-in" : "logged-out");
    };

});