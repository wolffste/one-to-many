//= require rails-ujs
//= require_tree .
function addLi() {
var node = document.createElement("LI");                 // Create a <li> node
var textnode = document.createTextNode("Water");         // Create a text node
node.appendChild(textnode);                              // Append the text to <li>
document.getElementById("myList").appendChild(node);     // Append <li> to <ul> with id="myList"
}


function delLi() {
  var list = document.getElementById("myList");
  list.removeChild(list.childNodes[0]);
}

var myFunction = function() {
  document.getElementsByClassName("test")[0].innerText("hallo");
}
// var myFunction = function() {
//     var attribute = this.getAttribute("data-myattribute");
//     alert(attribute);
// };

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

    var element = document.getElementsByClassName("book")[0];
    if (element) {
      element.addEventListener('click', myFunction, false);
    }

    function addLi() {
var node = document.createElement("LI");                 // Create a <li> node
var textnode = document.createTextNode("asdfa");         // Create a text node
node.appendChild(textnode);                              // Append the text to <li>
document.getElementById("myList").appendChild(node);     // Append <li> to <ul> with id="myList"
}

$("#reload").click(function() {
  $(".tabcontent").load(" .tabcontent");
  var node = document.createElement("LI");                 // Create a <li> node
  var textnode = document.createTextNode("öasodhifg");         // Create a text node
  node.appendChild(textnode);                              // Append the text to <li>
  document.getElementById("myList").appendChild(node);     // Append <li> to <ul> with id="myList"
});








































