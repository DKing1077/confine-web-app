async function loadSessionStatus() {
    const token = localStorage.getItem("access_token");

    const headers = {};
    if (token) {
        headers["Authorization"] = `Bearer ${token}`;
    }

    const response = await fetch("/session-status", {
        credentials: "include",
        headers
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

/* ---------------- GLOBAL EXPORT ---------------- */
window.loadSessionStatus = loadSessionStatus;

/* ---------------- INITIAL CALL (WAIT FOR DOM) ---------------- */
if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", loadSessionStatus);
} else {
    loadSessionStatus();
}