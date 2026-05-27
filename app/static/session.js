const buttons = document.querySelectorAll('.mode-btn');
const form = document.getElementById('session_form');

let currentMode = "login";

/* ---------------- FORM SUBMIT ---------------- */

form.addEventListener('submit', async (e) => {

    e.preventDefault();

    const email = document.getElementById('email_input').value;
    const password = document.getElementById('password_input').value;

    try {

        const response = await fetch(`/${currentMode}`, {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            credentials: "include",
            body: JSON.stringify({ email, password })
        });

        if (!response.ok) {
            return;
        }

        /*
            IMPORTANT RULE:
            - register → no session change
            - login → server sets session
            - UI updates ONLY via auth.js
        */

        if (currentMode === "login") {
            await loadSessionStatus(); // from auth.js
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

        currentMode = btn.dataset.mode;
    });
});



