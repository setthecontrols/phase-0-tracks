

#Release 2

#Number 1.

#Deleting from an array

	numbers = [1, 2, 3, 4, 5, 6, 7, 8]

	p numbers

	numbers.delete_if { |num| num%2 == 0}
	p numbers


#Delete from a hash

 
	numbers = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8}
		numbers.delete_if {|key, value| value%2 == 0}

	p numbers

#Number 2

#Filter from an array

	numbers = [1, 2, 3, 4, 5, 6, 7, 8]

	p numbers.reject { |num| num%2 == 0}
	p numbers


#Filter from a hash

 
	numbers = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8}
		p numbers.reject {|key, value| value%2 == 0}
		p numbers

# - End Filters -

#Number 3
#Different array filter

	numbers = [1, 2, 3, 4, 5, 6, 7, 8]

	p numbers.select { |num| num%2 == 0}
	p numbers


#Different hash filter

 
	numbers = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6, "seven" => 7, "eight" => 8}
		p numbers.select {|key, value| value%2 == 0}
		p numbers

#End different method

number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	loop do
		new_number = number.delete_if {|delete| delete - delete = 0}
		p new_number.any?
	if new_number.any? == false
		p new_number
	break
end
end

#Number 4
 10 = false

loop do
	number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
	rejected_numbers = numbers.reject { |num| num + 3}
	break if rejected_numbers == false
end

#Release 1 demonstrating knowledge - hashed out to keep code from running -

# start .each

dinner = {
	pizza: ["pepperoni", "cheese", "bacon"],
	burger: ["bacon", "avocado", "classic"],
	burrito: ["chicken", "bean", "pork"],
}



puts "Whats for Dinner!"
p dinner 
dinner.each do |dish, ingredient|
         


puts "You will eat a #{dish} with #{ingredient[]}"

end

# end .each

# start .map

dinner = ["pizza", "burger", "burrito"]



puts "Whats for Dinner!"
p dinner 
dinner.map do |dish|
         
end

#end .map

#start .map!

dinner = ["pizza", "burger", "burrito"]

puts "original array"
p dinner

puts "Want to see something crazy?"

something_crazy = dinner.map! do |dish|
 	puts dish
 	dish.next

end

puts "here you go"
puts something_crazy


