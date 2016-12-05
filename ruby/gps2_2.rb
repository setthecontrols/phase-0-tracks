# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list (Consider how to make it look nice!)
# We've gotten you started:
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # input .split on space  
  # set default quantity
  # print the list to the console - use print method
# output: key and values

def create_list(list)
 grocery_list = {}
 up_ls = list.split(' ')
 up_ls.each do |item|
 	grocery_list[item] = 1
 	end 
 pretty_print(grocery_list)
end 

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
 # update hash with parameters item, quantity
 # use print method
# output: item, quantity
def add_item(list, item, quantity)
 	list[item] = quantity 
 pretty_print(list)
end 


# Method to remove an item from the list
# input: item to remove
# steps: 
  # delete argument 
 # use print method
# output: remaining items
def remove_item(list, item)
 	list.delete(item) 
 pretty_print(list)
end 

# Method to update the quantity of an item
# input: item, quantity
# steps:
 # upate quantity based on item
# output: items, quantities

def update_quan(list, item, quantity)
 list[item] = quantity
 	pretty_print(list) 
end 

# Method to print a list and make it look pretty
# input: hash
# steps: hash.each printing keys and values on separate lines
# output: keys and values on separate lines
def pretty_print(list)
 list.each do |item, quantity|
 	puts "You just got: #{item}=#{quantity}"
 	end 
end 


#USER INTERFACE:
grocery_list = create_list("butter smiles")
grocery_list = add_item(grocery_list, "beer", 6)
grocery_list = remove_item(grocery_list, "butter")
grocery_list = update_quan(grocery_list, "smiles", 24)
pretty_print(grocery_list)