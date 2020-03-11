const hideReviewForm = () => {


  const hide = document.getElementById('hide-review-btn');


    if (hide){


      hide.addEventListener('click', () => {
        const hiddenReview = document.getElementById('hidden-review-form');
        hiddenReview.style.display = "none";
      });


    }



};

export {hideReviewForm};
