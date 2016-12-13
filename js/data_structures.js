var colors = ["orange", "white", "pink", "black"]
var names = ["goblin", "stripes", "floyd", "sabbath"]


function add_color(arr, color){
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



function Car(fuleType, year, isWorking){
	console.log("Here's a car:", this);
	this.fuleType = fuleType;
	this.year = year;
	this.isWorking = isWorking;

	this.reverse = function() {console.log("Backing up, over here!");};

	console.log("CAR INITIALIZED") 
}

console.log("Let's put a car together!")
var ourCar_01 = new Car("coal", 1892, false)
console.log("ourCar_01")
console.log("Our car can reverse!")
ourCar_01.reverse()
console.log("---------")
