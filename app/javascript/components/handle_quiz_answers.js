
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
          const colours = document.querySelectorAll('.dependent-group-level-three-colours');
          colours.forEach((colour) => {
            colour.style.display = "none";
          });
          const regions = document.querySelectorAll('.dependent-group-level-three-regions');
          regions.forEach((region) => {
            region.style.display = "none";
          });
        };
      });
    });
  });
  const colours = document.querySelectorAll('.colours');
  colours.forEach((colour) => {
    colour.addEventListener("click", (event) => {
      const colourDependencies = document.querySelectorAll('.dependent-group-level-three-colours');
      console.log(colourDependencies);
      colourDependencies.forEach((colourDependency) => {
        console.log(event.currentTarget.dataset.dependent);
        console.log(colourDependency.dataset.question);
        if(event.currentTarget.dataset.dependent === colourDependency.dataset.question) {
          colourDependency.style.display = "flex";
        } else {
          colourDependency.style.display = "none";
        };
      });
    });
  });
  const regions = document.querySelectorAll('.regions');
  regions.forEach((region) => {
    region.addEventListener("click", (event) => {
      const regionDependencies = document.querySelectorAll('.dependent-group-level-three-regions');
      console.log(regionDependencies);
      regionDependencies.forEach((regionDependency) => {
        console.log(event.currentTarget.dataset.dependent);
        console.log(regionDependency.dataset.question);
        if(event.currentTarget.dataset.dependent === regionDependency.dataset.question) {
          regionDependency.style.display = "flex";
        } else {
          regionDependency.style.display = "none";
        };
      });
    });
  });
  const personnalities = document.querySelectorAll('.personnalities');
  personnalities.forEach((personnality) => {
    personnality.addEventListener("click", (event) => {
      const management_question = document.querySelector('.management-question')
      management_question.style.display = "flex";
    });
  });
};



export { handleQuizAnswers };

