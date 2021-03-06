// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:

import { homeType } from '../plugins/typed.js';
import { initUpdateNavbarOnScroll } from '../components/navbar.js';
import { choicesCustom } from '../components/choices_quiz.js';
import { handleQuizAnswers } from '../components/handle_quiz_answers.js';
import { collapse } from '../components/collapse.js';
import { initSlider } from '../components/slider.js';
import { filters } from '../components/filters.js';


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  initUpdateNavbarOnScroll();
  homeType();
  collapse();
  initSlider();
  filters();
  if (document.querySelector('.grouped-choices')) {
    choicesCustom();
  };
  if (document.querySelector("#new_user_answer")){
    handleQuizAnswers();
  };
  $('[data-tooltip=tooltip]').tooltip();
});

// $(function(){
//   $('[data-tooltip=tooltip]').tooltip();
// });
