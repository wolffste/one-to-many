const hideReviewForm = () => {
  const hide = document.getElementById('hide-review-div');
    if (hide){
      hideReviewDiv.addEventListener('click', () => {
        hideReviewDiv.style.display = "none";
      });
    }
};


export {hide_review_form};
