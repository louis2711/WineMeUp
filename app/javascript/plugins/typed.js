import Typed from "typed.js";

const homeType = () => {
  if (document.querySelector('.element')){
    const typed = new Typed('.element', {
      strings: ["experience", "skills", "taste"],
      typeSpeed: 50,
      backSpeed: 50,
      loop: true
    });
  };
}



export { homeType };
