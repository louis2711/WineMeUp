import Typed from "typed.js";

const homeType = () => {
  if ($('.element').length > 0){
    const typed = new Typed('.element', {
      strings: ["skills", "taste"],
      typeSpeed: 50,
      backSpeed: 50,
      loop: true
    });
  };
}

export { homeType };
