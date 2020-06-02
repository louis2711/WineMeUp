
const handleQuizAnswers = () => {
  const reasons = document.querySelectorAll('.reasons');
  reasons.forEach((reason) => {
    reason.addEventListener("click", (event) => {
      reason.querySelector("input").checked = true;
      const dependency = event.currentTarget.dataset.dependent;
      const reasonDependencies = document.querySelectorAll('.dependent-group');
      reasonDependencies.forEach((reasonDependency) => {
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
      exploration.querySelector("input").checked = true;
      const explorationDependencies = document.querySelectorAll('.dependent-group-leveltwo');
      explorationDependencies.forEach((explorationDependency) => {
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
      colour.querySelector("input").checked = true;
      const colourDependencies = document.querySelectorAll('.dependent-group-level-three-colours');
      colourDependencies.forEach((colourDependency) => {
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
      region.querySelector("input").checked = true;
      const regionDependencies = document.querySelectorAll('.dependent-group-level-three-regions');
      regionDependencies.forEach((regionDependency) => {
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
      personnality.querySelector("input").checked = true;
    });
  });
  const endQuestions = document.querySelectorAll('.end-question');
  endQuestions.forEach((endQuestion) => {
    endQuestion.addEventListener("click", (event) => {
      endQuestion.querySelector("input").checked = true;

    });
  });
};



export { handleQuizAnswers };

