

const openTag = () => {

  const profileBtn = document.getElementById('profile-btn');
  if (profileBtn){
    profileBtn.addEventListener('click', () => {
      hideUnActive();
      const tagname = document.getElementById('profile');
      tagname.style.display = "block";
      profileBtn.className += " active";
    });
  }


  const bookingsBtn = document.getElementById('bookings-btn');
  if (bookingsBtn){
    bookingsBtn.addEventListener('click', () => {
      hideUnActive();
      const tagname = document.getElementById('bookings');
      tagname.style.display = "block";
      bookingsBtn.className += " active";
    });
  }

    const bandsBtn = document.getElementById('bands-btn');
  if (bandsBtn){
    bandsBtn.addEventListener('click', () => {
      hideUnActive();
      const tagname = document.getElementById('bands');
      tagname.style.display = "block";
      bandsBtn.className += " active";
    });
  }


  const favoritesBtn = document.getElementById('favorites-btn');
  if (favoritesBtn){
    favoritesBtn.addEventListener('click', () => {
      hideUnActive();
      const tagname = document.getElementById('favorites');
      tagname.style.display = "block";
      favoritesBtn.className += " active";
    });
  }

};



const hideUnActive = () => {
  let i;
  const tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  const tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
};



export {openTag};
