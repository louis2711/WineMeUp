// const handleQuizAnswers = () => {
//   const element = document.getElementById('reason-3')
//   element.addEventListener("click", (event) => {
//     const changingElement = document.getElementById('colour-choices');
//     changingElement.style.display = "flex";
//   });
// };

const handleQuizAnswers = () => {
  const reasons = document.querySelectorAll('.reasons');
  reasons.forEach((reason) => {
    reason.addEventListener("click", (event) => {
      console.log(event.currentTarget.dataset);
      const dependency = event.currentTarget.dataset.dependent;
      console.log(dependency);
      const reasonDependencies = document.querySelectorAll('.dependent-group');
      reasonDependencies.forEach((reasonDependency) => {
        console.log(dependency);
        console.log(event.currentTarget.dataset.dependent);
        if(event.currentTarget.dataset.dependent === reasonDependency.dataset.question) {
          reasonDependency.style.display = "flex";
        } else {
          reasonDependency.style.display = "none";
        };
      });
    });
  });
  const explorations = document.querySelectorAll('.explorations');
  explorations.forEach((exploration) => {
    exploration.addEventListener("click", (event) => {
      const explorationDependencies = document.querySelectorAll('.dependent-group-leveltwo');
      console.log(explorationDependencies);
      explorationDependencies.forEach((explorationDependency) => {
        console.log(event.currentTarget.dataset.dependent);
        console.log(explorationDependency.dataset.question);
        if(event.currentTarget.dataset.dependent === explorationDependency.dataset.question) {
          explorationDependency.style.display = "flex";
        } else {
          explorationDependency.style.display = "none";
        };
      });
    });
  });
  // const explorations = document.querySelectorAll('.explorations');
  // explorations.forEach((exploration) => {
  //   exploration.addEventListener("click", (event) => {
  //     const depedency = event.currentTarget.dataset.dependent;
  //     const explorationDependencies = document.querySelectorAll('.dependent-group');
  //     explorationDependencies.forEach((explorationDependency) => {
  //       if (event.currentTarget.dataset.dependent != null) {
  //         if(event.currentTarget.dataset.dependent === explorationDependency.dataset.question) {
  //           explorationDependency.style.display = "flex";
  //         } else {
  //           explorationDependency.style.display = "none";
  //         };
  //       };
  //     });
  //   });
  // });
};



export { handleQuizAnswers };

