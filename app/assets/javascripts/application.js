//= require rails-ujs
//= require_tree .
// Get the element with id="defaultOpen" and click on it

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

    // var element = document.getElementsByClassName("book")[0];
    // if (element) {
    //   element.addEventListener('click', myFunction, false);
    // }





// $("#reload").click(function() {
//   $(".tabcontent").load(" .tabcontent");
//   var node = document.createElement("LI");                 // Create a <li> node
//   var textnode = document.createTextNode("öasodhifg");         // Create a text node
//   node.appendChild(textnode);                              // Append the text to <li>
//   document.getElementById("myList").appendChild(node);     // Append <li> to <ul> with id="myList"
// });

// const changeBookingStatus = () => {
//   const confirm = document.querySelectorAll(".hideConfirm");
//   const decline = document.querySelectorAll(".hideDecline");
//   const newStatus = document.getElementById('change');
//   confirm.addEventListener('click', () => {
//     confirm.style.display = 'none'
//     decline.style.display = 'none'
//     change.innerHTML = "Comfirmation-status: confirmed"
//   })
//   decline.addEventListener('click', () => {
//     confirm.style.display = 'none'
//     decline.style.display = 'none'
//     change.innerHTML = "Comfirmation-status: declined"
//   })
// }


// $(document).ready(function(){
//   // get instance from server
//   // set status to variable
//   // in case/if check variable value
//   // apply value into dom text
//   $(".hideConfirm").click(function(){
//     $(".hide").hide();
//     var a = "Comfirmation-status:"
//     var b = "booked"
//     jQuery("#change").text(a.concat(b));
//   });
// });

// $(document).ready(function(){
//   $(".hideDecline").click(function(){
//     $(".hide").hide();
//     var a = "Comfirmation-status:"
//     var b = "declined"
//     jQuery("#change").text(a.concat(b));
//   });
// });

/////////////////////////////////////////////

// const favorite = () => {
//   const star = document.getElementById('star');
//   if (star){
//     star.addEventListener('click', function() {
//       star.classList.toggle('yellow');
//     });
//   }
// };

// (function() {
//   const star = document.getElementById('star');
//   star.addEventListener('click', function() {
//     star.classList.toggle('yellow');
//   });
// })();

