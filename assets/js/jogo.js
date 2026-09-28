// assets/js/jogo.js
document.addEventListener("DOMContentLoaded", () => {
    const filterBtn = document.getElementById("filterBtn");
    const tagsRow = document.getElementById("tagsRow");

    if (!filterBtn || !tagsRow) return;

    filterBtn.addEventListener("click", () => {
        tagsRow.classList.toggle("open");
    });
});
