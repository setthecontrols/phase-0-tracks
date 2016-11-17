
function add(x, y) {
  return x + y;
}

function reverse(string){
// var string = "hello"
var reversed = "";
for (var i = 0; i < string.length; i++) {
 reversed=(string[i])+reversed;
}
console.log(reversed);
}
reverse("freefall");