const colorFilter = () => {
  const colorCheckboxes = document.querySelectorAll('.color-checkbox');
  colorCheckboxes.forEach((colorCheckbox) => {
    colorCheckbox.addEventListener('change', (e) => {
      const form = document.querySelector('.form-filtering');
      if (form) {
      form.submit();
      }
    });
  });
}

export { colorFilter };
