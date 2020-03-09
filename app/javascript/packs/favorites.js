const favorite = () => {
  const star = document.getElementById('star');
  if (star){
    star.addEventListener('click', () => {
      star.classList.toggle('purple');
    });
  }
};

export {favorite};
// (function() {
//   const star = document.getElementById('star');
//   star.addEventListener('click', function() {
//     star.classList.toggle('yellow');
//   });
// })();
