const buttons = document.querySelectorAll('.mode-btn');
const form = document.getElementById('session_form');

let currentMode = "login";

// MODE SWITCHING
buttons.forEach(btn => {
    btn.addEventListener('click', () => {

        buttons.forEach(b => {
            b.classList.remove('active');
        });

        btn.classList.add('active');

        currentMode = btn.dataset.mode;
    });
});

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

            body: JSON.stringify({
                email: email,
                password: password
            })
        });

        const data = await response.json();

        console.log(data);

    } catch (error) {

        console.error(error);

    }

});