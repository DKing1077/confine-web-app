const buttons = document.querySelectorAll('.mode-btn');
const form = document.getElementById('session_form');

const emailInput = document.getElementById('email_input');
const passwordInput = document.getElementById('password_input');

let currentMode = "login";

/* ---------------- MODE HANDLER ---------------- */

function setAuthMode(mode) {
    currentMode = mode;

    emailInput.required = mode !== "logout";
    passwordInput.required = mode !== "logout";
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
            },
            credentials: "include"
        };

        if (currentMode !== "logout") {
            options.body = JSON.stringify({ email, password });
        }

        const response = await fetch(`/${currentMode}`, options);

        if (!response.ok) {
            return;
        }

        if (currentMode === "login" || currentMode === "logout") {
            await loadSessionStatus();
        }

        form.reset();

    } catch {
        // silent fail
    }
});

/* ---------------- MODE SWITCH ---------------- */

buttons.forEach(btn => {

    btn.addEventListener('click', () => {

        buttons.forEach(b => b.classList.remove('active'));

        btn.classList.add('active');

        setAuthMode(btn.dataset.mode);

    });
});

/* ---------------- INITIAL STATE ---------------- */

setAuthMode(currentMode);