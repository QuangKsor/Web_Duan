function initSlider(sliderId) {
  const slider = document.getElementById(sliderId);
  const listImages = slider.querySelector(".list-images");
  const slides = slider.querySelectorAll(".list-images > div");
  const btnLeft = slider.querySelector(".btn-left");
  const btnRight = slider.querySelector(".btn-right");

  const total = slides.length;
  let current = 0;
  let width = slider.clientWidth;

  function updateSlide() {
    listImages.style.transform = `translateX(-${width * current}px)`;
  }

  function nextSlide() {
    current = (current + 1) % total;
    updateSlide();
  }

  function prevSlide() {
    current = (current - 1 + total) % total;
    updateSlide();
  }

  window.addEventListener("resize", () => {
    width = slider.clientWidth;
    updateSlide();
  });

  let slideInterval = setInterval(nextSlide, 4000);

  btnRight.addEventListener("click", () => {
    clearInterval(slideInterval);
    nextSlide();
    slideInterval = setInterval(nextSlide, 4000);
  });

  btnLeft.addEventListener("click", () => {
    clearInterval(slideInterval);
    prevSlide();
    slideInterval = setInterval(nextSlide, 4000);
  });
}

document.addEventListener("DOMContentLoaded", () => {
  initSlider("slider1");
  initSlider("slider2");
  initSlider("slider3");
});
