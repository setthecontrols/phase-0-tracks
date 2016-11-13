@grocery_list = {
			 
}
# Method to create a list def create_list("item", "quantity")
# define method to create populate hash with items and quantities
# def inputted_items(grocery_list, str) # => "bananas bread"
#   groceries_to_add_array = str.split # => ["carrots", "apples", "cereal"]
#   # grocery_hash["Pizza"] = 5
#   groceries_to_add_array.each do |grocery|
#   # put the grocery in the hash, with a value of 1
#   grocery_list[grocery] = 1
#   end
#   puts grocery_list
# end
# steps: 
  # [fill in any steps here]
    # set default quantity == 1 
  # print the list to the console [can you use one of your other methods here?]
  # output: [what data type goes here, array or hash?]
# hash {food item, quantity}

# Method to add an item to a list
def add_to_list(food_item,quantity)
# input: item name and optional quantity
  @grocery_list.store(food_item,quantity)
  # *print*
end
  # steps: add input to hash
# output: hash {food item, quantity}

# Method to remove an item from the list
def remove_item(item)	
# input: item name 
# steps: delete input from hash
  @grocery_list.delete(item)
# output: hash {food item, quantity}
  #*print*
end

# Method to update the quantity of an item
def update_quantity(food_item,int)
# input: number
  @grocery_list[food_item] = int 
# steps: list nesed items and give option to change
# output:  hash {food item, quantity}
# *print*
end

# Method to print a list and make it look pretty
def print_list(hash)
  hash.each do | grocery, quantity |
  	puts "#{grocery}: #{quantity}"
  	puts ""
  end
end

  

puts "add food items and quantities to list"
add_to_list("lemonade",2)
add_to_list("tomatoes",3)
add_to_list("onions",1)
add_to_list("ice cream",4)

print_list(@grocery_list)
remove_item("lemonade")
print_list(@grocery_list)
update_quantity("ice cream",1)
print_list(@grocery_list)











# # initialize hash outside methods with item and quantity and make available to all methods
# grocery_list = {
			 
# }

# # Method to create a list def create_list("item", "quantity")
# # define method to create populate hash with items and quantities
# def inputted_items(grocery_list, str) # => "bananas bread"
#   groceries_to_add_array = str.split # => ["carrots", "apples", "cereal"]
#   # grocery_hash["Pizza"] = 5
#   groceries_to_add_array.each do |grocery|
#   # put the grocery in the hash, with a value of 1
#   grocery_list[grocery] = 1
#   end
#   puts grocery_list
# end
# # steps: 
#   # [fill in any steps here]
#     # set default quantity == 1 
#   # print the list to the console [can you use one of your other methods here?]
#   # output: [what data type goes here, array or hash?]
# # hash {food item, quantity}

# # Method to add an item to a list
# def add_to_list(food_item,quantity)
# # input: item name and optional quantity
#   @grocery_list.store(food_item,quantity)
#   # *print*
# end
#   # steps: add input to hash
# # output: hash {food item, quantity}

# # Method to remove an item from the list
# def remove_item(item)	
# # input: item name 
# # steps: delete input from hash
#   @grocery_list.delete(item)
# # output: hash {food item, quantity}
#   #*print*
# end

# # Method to update the quantity of an item
# def update_quantity(food_item,int)
# # input: number
#   @grocery_list[food_item] = int 
# # steps: list nesed items and give option to change
# # output:  hash {food item, quantity}
# # *print*
# end

# # Method to print a list and make it look pretty
# def print_list(hash)
#   hash.each do | grocery, quantity |
#   	puts "#{grocery}: #{quantity"}"
#   	puts ""
# end


# # input: hash
# # steps: iterate through hash and print all datas
# # output: Hash data 
