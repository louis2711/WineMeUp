import "bootstrap-slider";
import $ from "jquery";

const initSlider = () => {
  $("#ex2").slider()
  $("#ex2").on('change', (event) => {
    const form = document.querySelector('.form-filtering');
    if (form) {
      form.submit();
    }
  });
};

export { initSlider };
