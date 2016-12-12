// take string input
// declar container string to store one letter of string at a time
// write iteration that adds one letter of string at a time
//   front of container string until end of string  
var reversed = ""
function reverse(string){
  for (var i = 0; i < string.length; i++){
    reversed = string[i] + reversed;
  }
if (string == "hello world!") {
	console.log(reversed);
}else {
	console.log("You didn't say the magic phraaaaaaase.");
}
}
reverse("hello world!")