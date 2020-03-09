//= require rails-ujs
//= require_tree .


(function() {
  const star = document.getElementById('star');
  star.addEventListener('click', function() {
    star.classList.toggle('yellow');
  });
})();
