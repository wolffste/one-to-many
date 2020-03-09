const favorite = () => {
  const star = document.getElementById('star');
  if (star){
    star.addEventListener('click', function() {
      star.classList.toggle('yellow');
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
