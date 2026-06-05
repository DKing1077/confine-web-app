const buttons = document.querySelectorAll('.mode-btn');
const form = document.getElementById('session_form');
const authResults = document.getElementById('auth_results');

const emailInput = document.getElementById('email_input');
const passwordInput = document.getElementById('password_input');

let currentMode = "login";

/* ---------------- MODE HANDLER ---------------- */

function setAuthMode(mode) {
    currentMode = mode;

    emailInput.required = mode !== "logout";
    passwordInput.required = mode !== "logout";

    console.log("[MODE]", currentMode);
}

/* ---------------- FORM SUBMIT ---------------- */

form.addEventListener('submit', async (e) => {
    e.preventDefault();

    const email = emailInput.value;
    const password = passwordInput.value;

    try {
        const options = {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            }
        };

        if (currentMode !== "logout") {
            options.body = JSON.stringify({ email, password });
        }

        if (currentMode === "logout") {
            const token = localStorage.getItem("access_token");

            if (token) {
                options.headers["Authorization"] = `Bearer ${token}`;
            }
        }

        const response = await fetch(`/${currentMode}`, options);

        const raw = await response.text();

        let data;
        try {
            data = JSON.parse(raw);
        } catch {
            throw new Error("Invalid JSON from backend");
        }

        if (response.ok) {

            if (currentMode === "login") {
                localStorage.setItem("access_token", data.access_token);
                localStorage.setItem("refresh_token", data.refresh_token);
            }

            if (currentMode === "logout") {
                localStorage.removeItem("access_token");
                localStorage.removeItem("refresh_token");
            }

            authResults.innerHTML =
                `<span class="success">${data.route} | ${data.status}</span>`;

            await window.loadSessionStatus();

        } else {
            authResults.innerHTML =
                `<span class="error">${data.route ?? currentMode} | ${data.status ?? "failed"}</span>`;
        }

        form.reset();

    } catch (err) {
        authResults.innerHTML =
            `<span class="error">Error: ${err.message}</span>`;
    }
});

/* ---------------- MODE SWITCH ---------------- */

buttons.forEach(btn => {
    btn.addEventListener('click', () => {

        buttons.forEach(b => b.classList.remove('active'));
        btn.classList.add('active');

        setAuthMode(btn.dataset.mode);

        console.log("[MODE SWITCH]", btn.dataset.mode);
    });
});

/* ---------------- INITIAL STATE ---------------- */

setAuthMode(currentMode);