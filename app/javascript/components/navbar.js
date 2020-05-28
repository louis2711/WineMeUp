 const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY > 0 ) {
        navbar.classList.add('active');
      } else {
        navbar.classList.remove('active');
      }

    })
  }
}

export { initUpdateNavbarOnScroll };
