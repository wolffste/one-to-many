const defaultTag = () => {

  //const defaultOpen = document.getElementById('defaultOpen');
  const def = document.getElementById('bookings');
  const defBtn = document.getElementById('bookings-btn');

    if (def) {
      let i;
      const tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      const tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
      }

      def.style.display = "block";
      defBtn.className += " active";
    };
};

export {defaultTag};
