const favorite_index = () => {
  const stars = document.querySelectorAll(".starindex");
  if (stars){
    stars.forEach((star) => {
      star.addEventListener('click', () => {
        event.target.classList.toggle("yellow");
      });
    });
  }
};

export {favorite_index};
