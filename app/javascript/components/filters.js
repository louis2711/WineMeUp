const filters = () => {
  const inputs = document.querySelectorAll('.form-filtering input');
  inputs.forEach((input) => {
    input.addEventListener('change', (e) => {
      const form = document.querySelector('.form-filtering');
      if (form) {
        form.submit();
      }
    });
  });
  const slider = document.querySelector('#ex2');

  // let i = document.querySelector('input'),
  //   i.addEventListener('input', function () {
  //   o.innerHTML = i.value;
  //   },
  // false);
};

export { filters };



