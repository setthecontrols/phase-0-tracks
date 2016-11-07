#create hash to store client information name, age, number of children, decor theme,
#  colors considered, phone number, address

 design_details = {
 	name: "",
	address: "",
	email: "",
	phone: "",
	colors_considered: [],
	age: "",
	num_of_children: "",
	decor_theme: ""
 }

 puts "Please enter the following information:"
 puts "Name:"
 design_details[:name] = gets.chomp
 puts "Address:"
 design_details[:address] = gets.chomp   
 puts "Email:"
 design_details[:email] = gets.chomp
 puts "Phone number:"
 design_details[:phone] = gets.chomp
 puts "colors_considered:"
 design_details[:colors_considered] = gets.chomp  

 # take input from client; 
 p design_details

 # print the hash back to the user once the questions are answered

 # ask user if they would like to update any of the info. 
 #  But if the designer enters "decor_theme" (for example), your program should ask for
 #   a new value and update the :decor_theme key. 
 #   (Hint: Strings have methods that will turn them into symbols, 
 #   	which would be quite handy here.) You can assume the user will correctly input a key that exists
 #   	 in your hash -- no need to handle user errors.

 # print latest version of the hash and exit


