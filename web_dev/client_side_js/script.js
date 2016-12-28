console.log("working!");


function font_to_xx_large(){
var stored = document.getElementById('links')
stored.style.fontSize = "xx-large";
}

var stored = document.getElementById('links');
console.log(stored)
stored.addEventListener("mouseover", font_to_xx_large);