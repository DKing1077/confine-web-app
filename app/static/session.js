const buttons = document.querySelectorAll('.mode-btn');
const form = document.getElementById('session_form');

let currentMode = "login";

// FORM SUBMIT
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
            body: JSON.stringify({ email, password })
        });

        if (response.ok) {

            // EXPECTED: backend returns JSON like { username: "David" }
            let data = null;

            try {
                data = await response.json();
            } catch (e) {
                data = null;
            }

            if (data && data.username) {
                setUserStatus(data.username, true);
            } else {
                setUserStatus("user", true);
            }

            form.reset();
        }

    } catch (error) {
        // silent fail
    }
});

// MODE SWITCHING
buttons.forEach(btn => {
    btn.addEventListener('click', () => {
        buttons.forEach(b => b.classList.remove('active'));
        btn.classList.add('active');
        currentMode = btn.dataset.mode;
    });
});

// USER STATUS UPDATE (shared with other pages if loaded)
window.setUserStatus = function(username, loggedIn) {
    const statusEl = document.querySelector(".user-status .username");
    if (!statusEl) return;

    statusEl.textContent = loggedIn ? username : "unknown";

    statusEl.classList.remove("logged-in", "logged-out");
    statusEl.classList.add(loggedIn ? "logged-in" : "logged-out");
};
