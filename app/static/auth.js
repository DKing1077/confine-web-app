async function loadSessionStatus() {
    const token = localStorage.getItem("access_token");
    console.log("Token exists:", !!token);

    try {
        const response = await fetch("/session-status", {
            method: "GET",
            headers: {
                "Authorization": `Bearer ${token}`
            }
        });

        console.log("Session status response:", response.status);

        if (!response.ok) {
            console.error("Session status failed:", response.status);
            return;
        }

        const data = await response.json();
        console.log("Session data received:", data);

        const el = document.querySelector(".user-status .username");
        if (!el) {
            console.warn("Element .user-status .username not found on page");
            return;
        }

        if (data.logged_in && data.email) {
            el.textContent = data.email;
            el.classList.add("logged-in");
            el.classList.remove("logged-out");
        } else {
            el.textContent = "unknown";
            el.classList.add("logged-out");
            el.classList.remove("logged-in");
        }

    } catch (error) {
        console.error("Error loading session status:", error);
    }
}

window.loadSessionStatus = loadSessionStatus;

document.addEventListener("DOMContentLoaded", () => {
    loadSessionStatus();
});