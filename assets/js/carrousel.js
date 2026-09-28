// assets/js/carrousel.js
document.addEventListener("DOMContentLoaded", () => {
    if (typeof Swiper === "undefined") {
        console.warn("Swiper não carregado — carrossel desabilitado.");
        return;
    }

    const el = document.querySelector(".swiper");
    if (!el) return;

    new Swiper(".swiper", {
        loop: false,
        grabCursor: true,
        spaceBetween: 30,
        watchOverflow: true,
        pagination: {
            el: ".swiper-pagination",
            clickable: true,
            dynamicBullets: true
        },
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev"
        },
        breakpoints: {
            0:    { slidesPerView: 1, spaceBetween: 20 },
            640:  { slidesPerView: 2, spaceBetween: 24 },
            1024: { slidesPerView: 3, spaceBetween: 30 }
        }
    });
});
