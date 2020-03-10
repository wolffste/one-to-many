//= require rails-ujs
//= require_tree .


document.getElementById("defaultOpen").click();

    function openTag(evt, tagName) {
      var i, tabcontent, tablinks;
      tabcontent = document.getElementsByClassName("tabcontent");
      for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
      }
      tablinks = document.getElementsByClassName("tablinks");
      for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
      }
      document.getElementById(tagName).style.display = "block";
      evt.currentTarget.className += " active";
    }

    var element = document.getElementsByClassName("book")[0];
    if (element) {
      element.addEventListener('click', myFunction, false);
    }


