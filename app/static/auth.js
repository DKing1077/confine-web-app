async function loadSessionStatus() {

    const response = await fetch("/session-status", {
        credentials: "include"
    });

    const data = await response.json();

    const el = document.querySelector(".user-status .username");
    if (!el) return;

    if (data.logged_in && data.email) {
        el.textContent = data.email;
        el.classList.add("logged-in");
        el.classList.remove("logged-out");
    } else {
        el.textContent = "unknown";
        el.classList.add("logged-out");
        el.classList.remove("logged-in");
    }
}

loadSessionStatus();

