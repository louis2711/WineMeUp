const collapseY = () => {
  const crosses = document.querySelectorAll('.container-filters a');
  if (crosses) {
    crosses.forEach((e)=>{
      e.addEventListener('click', (event) => {
        let x = event.target.innerHTML.trim();
        event.target.innerHTML = "-"
      })
    })
  };
};

export { collapseY };

const collapseX = () => {
  const minuses = document.querySelectorAll('.container-filters a');
  if (minuses) {
    minuses.forEach((a)=>{
      a.addEventListener('click', (minus) => {
        let y = minus.target.innerHTML.trim();
        minus.target.innerHTML = "+"
      })
    })
  };
};

export { collapseX };
