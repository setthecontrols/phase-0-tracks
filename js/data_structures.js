var colors = ["orange", "white", "pink", "black"]
var names = ["goblin", "stripes", "floyd", "sabbath"]


function add_name(arr, color){
	arr.push(color);
console.log(arr);
}
add_name(colors, "blues");


function add_name(arr, name){
	arr.push(name);
console.log(arr);
}
add_name(names, "pills");

var horses = {}
function add_names_and_colors(color, name){

	for (var i = 0; i < colors.length; i++){
		horses[color[i]] = name[i];
	}
	console.log(horses);
}
add_names_and_colors(colors, names)