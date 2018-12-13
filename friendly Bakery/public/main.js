
  var color = ["yellow", "green", "tomato", "dodgerblue"];
  var bookImage = document.getElementsByClassName('that_book_image');
//   var delicacies = document.getElementsByClassName('delicacies_class');
//
//
//   for (var i =0; i<bookImage.length; i++){
//   rand = Math.floor(Math.random()*4);
//   // bigBookDiv = document.getElementById('book_image');
//
//   bookImage[i].style.backgroundColor = color[i];
//   delicacies[i+2].style.opacity = "0";
//
//
//   console.log(i);
// }

var first = document.getElementById('my_pastries');

var second = document.getElementById('my_delicacies');

first.addEventListener("click", moveup);

function moveup(){
  // first.style.opacity="0";
  first.style.display="none";
}


second.addEventListener("click", movedown);
function movedown(){
  first.style.display="flex";
    first.style.marginLeft = "160px";
    // first.style.margin = "0 auto";
}
