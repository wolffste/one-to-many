const favorite = () => {
  const star = document.getElementById('star');
  if (star){
    star.addEventListener('click', () => {
      star.classList.toggle('purple');
    });
  }
};

export {favorite};
