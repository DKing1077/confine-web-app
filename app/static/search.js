document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("search_form");
    const resultsDiv = document.getElementById("results");

    form.addEventListener("submit", async (e) => {
        e.preventDefault(); // Stop full page reload

        const type = document.getElementById("search_type").value;
        const input = document.getElementById("search_input").value;

        try {
            const response = await fetch(`/search?search_type=${type}&search_input=${encodeURIComponent(input)}`);
            const text = await response.text();

            resultsDiv.innerHTML = text;
        } catch (err) {
            resultsDiv.innerHTML = `<p style="color:red;">Error: ${err}</p>`;
        }
    });
});

