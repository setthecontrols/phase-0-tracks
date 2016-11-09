	##Release 3 - 3rd or 4th attemp.  I couldn't come up with a good if no, then go to next method in lines 83 - 89 and getting multiple entries 
	##for colors on the update info? portion was tricky to the point that my solution is just clunky.
	 @design_details = {
 	name: "",
	address: "",
	email: "",
	phone: "",
	"colors_considered" => [],
	age: "",
	num_of_children: "",
	decor_theme: ""
 }

#write method that takes takes an array and updates it if the user answer yes to whether they want to update it. 
 def change_info(key,value)
	  	puts "Would you like to change #{key}?"
	  	change_y_or_n = gets.chomp.downcase
	  	unless change_y_or_n == "yes"
	  	# abort
	  	end
		if change_y_or_n == "yes" 
			# if value != @design_details["colors_considered"]
		
			puts "what would you like to change #{key} to?"
			# hash.update(hash){|k,v1| f(v1)}
		end 
    	# end
			if value == @design_details[:num_of_children] || @design_details[:age] || @design_details[:phone]
			value = gets.chomp.to_i 
			 else value = gets.chomp
		  end 
# puts value 
	 end 
	 

 ask_more_colors = ""
##ask user for information in hash keys
  puts "Please enter the following information:"
  puts "Name:"
  @design_details[:name] = gets.chomp
  puts "Address:"
  @design_details[:address] = gets.chomp   
  puts "Email:"
  @design_details[:email] = gets.chomp
  puts "Phone number:"
  @design_details[:phone] = gets.chomp.to_i
##take multiple colors input
 
    temp_colors = []
      ## was initially going to take one color and then ask if user wanted to add more colors.  decided to just take multiple entries off the bat. 
    # puts "More colors to add? yes/no"
    # more_colors = gets.chomp
    #   if more_colors == "no"
    #   temp_colors = "done"
    # 	# p temp_colors
    #   puts "Moving on...."
         puts "Enter as many colors as you want.  Type 'done' with finished"
      	  # end
    until temp_colors .include?("done")
    temp_colors = gets.split.map(&:chomp)
    @design_details["colors_considered"] << temp_colors
    end
     temp_colors.delete_at(0)

  puts "age:"
  @design_details[:age] = gets.chomp.to_i
  puts "Number of children:"
  @design_details[:num_of_children] = gets.chomp.to_i
  puts "Decor theme:"
  @design_details[:decor_theme] = gets.chomp
    puts "Info entered so far is:"
    @design_details.each {|key, value| puts "#{key} -  #{value}" }

# def update_info(value)
	p "Would you like to update any of this information? 'yes/no'"
	  update = gets.chomp.downcase
	  if update == "no"
	  	puts "Then why the hell did I just write this elsif statement??"
	  end
	  if update == "yes"
	  	# change_info("colors considered",@design_details["colors_considered"])
	  	change_info("name",@design_details[:name])
	  	change_info("address",@design_details[:address])
	  	change_info("email",@design_details[:email])
	  	change_info("phone number",@design_details[:phone])
	  	change_info("age",@design_details[:age])
	  	change_info("number of children",@design_details[:num_of_children])
	  	change_info("decore theme",@design_details[:decor_theme])
	  end
	  	 puts "would you like to change colors you're considering?"
	  	 change_y_or_n = gets.chomp.downcase
	  	   if change_y_or_n == "no"
	  	   	puts "Here is your info again.  Thanks!"
	  @design_details.each {|key, value| puts "#{key} -  #{value}" }
	  	   else 
			  puts "You will only be able to add to this list.  No deletions, but don't worry, we won't force you to use colors you don't want!  Go ahead and enter more colors now and enter 'done' when finished."
			    temp_colors = []
			    end
			    until temp_colors .include?("done")
                  temp_colors = gets.split.map(&:chomp)
                  @design_details["colors_considered"] << temp_colors
                end
                temp_colors.delete_at(0)
	  
	  
	  puts "Here is your info again.  Thanks!"
	  @design_details.each {|key, value| puts "#{key} -  #{value}" }
	  
	 # def change_info(key,value)
	 # 	puts "Would you like to change #{key}?"
	 # 	change_y_or_n = gets.chomp.downcase
	 # 	if change_y_or_n == "no"
	 # 	end
		# if change_y_or_n == "yes" 
		# 	puts "what would you like to change #{key} to?"
		# 	# hash.update(hash){|k,v1| f(v1)}
	 # end 

	 #end 
	 	 
	 #puts design_details[:age] 

	
#create hash to store client information name, age, number of children, decor theme,
#  colors considered, phone number, address

#create method to push data to design_details[:colors_considered]
## attempt1
# def push_data_to(arr)
# 	arr = design_details[:colors_considered]
#   temp_colors = []
#   puts "More colors to add? yes/no"
#   more_colors = gets.chomp
#     if more_colors == "no"
#       puts "Moving on...."
#         else puts "Enter additional colors.  Type 'done' with finished"
#       	  end
#     until temp_colors == "done"
#     temp_colors = gets.chomp.to_s
#     end
#   design_details[:colors_considered] << [temp_colors]
#   p design_details[:colors]
# end
#       puts "Moving on...."

##  attemp2
# design_details = {
#  	name: "",
# 	address: "",
# 	email: "",
# 	phone: "",
# 	colors_considered: [],
# 	age: "",
# 	num_of_children: "",
# 	decor_theme: ""
#  }

# def push_data_to(arr)
	# arr = design_details[:colors_considered]
 #  temp_colors = []
 #  puts "More colors to add? yes/no"
 #  more_colors = gets.chomp
 #    if more_colors == "no"
 #      puts "Moving on...."
 #        else puts "Enter additional colors.  Type 'done' with finished"
 #      	  end
 #    until temp_colors == "done"
 #    temp_colors = gets.chomp.to_s
 #    end
 #  design_details[:colors_considered] << [temp_colors]
 #  p design_details[:colors]
# end
      #puts "Moving on...."

## attempt 3
# design_details = {
#  	name: "",
# 	address: "",
# 	email: "",
# 	phone: "",
# 	"colors_considered" => "",
# 	age: "",
# 	num_of_children: "",
# 	decor_theme: ""
#  }

## def push_data_to(arr)
 ##was not able to create a method, so inserted the code below. 
	# arr = design_details[:colors_considered]
 #  temp_colors = []
 #  puts "More colors to add? yes/no"
 #  more_colors = gets.chomp
 #    if more_colors == "no"
 #      puts "Moving on...."
 #        else puts "Enter additional colors.  Type 'done' with finished"
 #      	  end
 #    until temp_colors == "done"
 #    temp_colors = gets.chomp
 #    end
 #  design_details["colors_considered"] << temp_colors
 #  p design_details#[:colors_considered]
# end
      #puts "Moving on...."
## ask user about updating data attempt01
 # def update_info(value) 
	# p "Would you like to update any of this information? 'yes/no'"
	#   update = gets.chomp.downcase
	#   if update == "no"
	#   	puts "Then why the hell did I just write this elsif statement??"
	#   end
	#   if update == "yes"
	#   change_info("age",design_details[:age])
	#   end
	  
	#   def change_info(key,value)
	#   	puts "Would you like to change #{key}?"
	#   	change_y_or_n = gets.chomp.downcase
	#   	if change_y_or_n == "no"
	#   	end
	# 	if change_y_or_n == "yes" 
	# 		puts "what would you like to change #{key} to?"
			
	#   end 

	#  end 
	 	 
	 #puts design_details[:age
##  attemp02 of above.  i put hash above method b/c method wasn't recognizing the hash, but then i realized it did when was above it and the call to "change_info("age",design_details[:age])"
 # design_details = {
 # 	name: "",
	# address: "",
	# email: "",
	# phone: "",
	# "colors_considered" => [],
	# age: "",
	# num_of_children: "",
	# decor_theme: ""
 # }

#write method that takes takes an array and updates it if the user answer yes to whether they want to update it. 
#  def change_info(key,value)
# 	  	puts "Would you like to change #{key}?"
# 	  	change_y_or_n = gets.chomp.downcase
# 	  	if change_y_or_n == "no"
# 	  	end
# 		if change_y_or_n == "yes" 
# 			puts "what would you like to change #{key} to?"
# 			# hash.update(hash){|k,v1| f(v1)}
# 		end 
# 			if value = (design_details[:num_of_children]) || (design_details[:age]) || (design_details[:phone])
# 			value = gets.chomp.to_i 
# 			elsif value = gets.chomp
# 		  end 
# puts value 
# 	 end 



# ##Release 3

#  design_details = {
#  	name: "",
# 	address: "",
# 	email: "",
# 	phone: "",
# 	"colors_considered" => [],
# 	age: "",
# 	num_of_children: "",
# 	decor_theme: ""
#  }
#  ask_more_colors = ""
##ask user for information in hash keys
  # puts "Please enter the following information:"
  # puts "Name:"
  # design_details[:name] = gets.chomp
  # puts "Address:"
  # design_details[:address] = gets.chomp   
  # puts "Email:"
  # design_details[:email] = gets.chomp
  # puts "Phone number:"
  # design_details[:phone] = gets.chomp.to_i
##take multiple colors input
 
    # temp_colors = []
      ## was initially going to take one color and then ask if user wanted to add more colors.  decided to just take multiple entries off the bat. 
    # puts "More colors to add? yes/no"
    # more_colors = gets.chomp
    #   if more_colors == "no"
    #   temp_colors = "done"
    # 	# p temp_colors
    #   puts "Moving on...."
         # puts "Enter as many colors as you want.  Type 'done' with finished"
      	  # end
  #   until temp_colors .include?("done")
  #   temp_colors = gets.split.map(&:chomp)
  #   design_details["colors_considered"] << temp_colors
  #   end
  #    temp_colors.delete_at(0)

  # puts "age:"
  # design_details[:age] = gets.chomp.to_i
  # puts "Number of children:"
  # design_details[:num_of_children] = gets.chomp.to_i
  # puts "Decor theme:"
  # design_details[:decor_theme] = gets.chomp
  #   puts "Info entered so far is:"
  #   design_details.each {|key, value| puts "#{key} -  #{value}" }

#ask user if they would like to update any information with method
 

 # print the hash back to the user once the questions are answered

 # ask user if they would like to update any of the info. 
 #  But if the designer enters "decor_theme" (for example), your program should ask for
 #   a new value and update the :decor_theme key. 
 #   (Hint: Strings have methods that will turn them into symbols, 
 #   	which would be quite handy here.) You can assume the user will correctly input a key that exists
 #   	 in your hash -- no need to handle user errors.

 # print latest version of the hash and exit

