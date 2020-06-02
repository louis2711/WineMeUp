const collapse = () => {
  const crosses = document.querySelectorAll('.container-filters a');
  if (crosses) {
    crosses.forEach((e)=>{
      e.addEventListener('click', (event) => {
        if (event.currentTarget.classList.contains('open')) {
          event.currentTarget.innerHTML = "+";
          event.currentTarget.classList.toggle('open');
        } else {
          event.currentTarget.innerHTML = "-";
          event.currentTarget.classList.toggle('open');
        }
      })
    })
  };
};

export { collapse };
