async function loadSessionStatus() {
    const prefix = "auth";
    const token = localStorage.getItem("access_token");
    console.log("Token exists:", !!token);

    try {
        const response = await fetch(`/${prefix}/session-status`, {
            method: "GET",
            credentials: "include",
            headers: {
                ...(token ? { "Authorization": `Bearer ${token}` } : {})
            }
        });

        console.log("Session status response:", response.status);

        const el = document.querySelector(".user-status .username");
        if (!el) {
            console.warn("Element .user-status .username not found on page");
            return;
        }

        if (!response.ok) {
            // immediate fallback on failed status check
            el.textContent = "unknown";
            el.classList.add("logged-out");
            el.classList.remove("logged-in");
            return;
        }

        const data = await response.json();
        console.log("Session data received:", data);

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
        const el = document.querySelector(".user-status .username");
        if (el) {
            el.textContent = "unknown";
            el.classList.add("logged-out");
            el.classList.remove("logged-in");
        }
    }
}

/**
 * Call this from session.js in your logout submit branch:
 * window.applyImmediateLogoutEffects();
 */
function applyImmediateLogoutEffects() {
    // 1) update status in UI immediately
    const el = document.querySelector(".user-status .username");
    if (el) {
        el.textContent = "unknown";
        el.classList.add("logged-out");
        el.classList.remove("logged-in");
    }

    // 2) remove local token immediately
    localStorage.removeItem("access_token");

    // 3) clear saved index state so panels render blank next time
    sessionStorage.removeItem("index_page_state_v1");

    // 4) if currently on index/confine page, clear visible UI now too
    if (typeof window.clearIndexUI === "function") {
        window.clearIndexUI();
    }
}

window.loadSessionStatus = loadSessionStatus;
window.applyImmediateLogoutEffects = applyImmediateLogoutEffects;

document.addEventListener("DOMContentLoaded", () => {
    loadSessionStatus();
});