# create hash with user information: client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).
# Prompt the designer/user for all of this information.
# Convert any user input to the appropriate data type.
# Print the hash back out to the screen when the designer has answered all of the questions.
# Give the user the opportunity to update a key. If the designer says "none", skip it. But if the designer enters "decor_theme" 
  #for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
      #You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
# Print the latest version of the hash, and exit the program.


@user_info = {
	"full name" => "",
	age: "",
	children: "",
	decor: "",
	married: "",
	colors: []
}

p "Please enter the following information:"
p "Full name"
@user_info["full name"] = gets.chomp
p "Age"
@user_info[:age] = gets.chomp.chomp.to_i
p "Number of children"
@user_info[:children] = gets.chomp.to_i
p "Decor"
@user_info[:decor] = gets.chomp
p "Married (yes/no)?"
@user_info[:married] = gets.chomp
p "What colors are you considering?" 
loop do 
  "Enter colors one at a time and enter 'done' when finshed."
  color_input = gets.chomp.downcase
  break if color_input == "done"
  @user_info[:colors] << color_input 
end

p "Here is your information:"
@user_info.each {|keys, user_info| 
puts "-"*10
puts "#{keys}: #{user_info} "
puts "-"*10
}

def print_updated_info
  p "Here is your updated information:"
@user_info.each {|keys, user_info| 
puts "-"*10
puts "#{keys}: #{user_info} "
puts "-"*10
}
end

puts "Would you like to update any of the above information? Enter 'done' if no, or enter the info you would like to change: 'full nam', 'age', 'children', 'decor', 'married' or 'colors'."  
change_info_question = gets.chomp.downcase
if change_info_question == "done"  
  puts "OK, thanks.  We have your information."
end
if change_info_question == "full name"
  p "What would you like to change 'full name' to?"
@user_info["full name"] = gets.chomp.downcase
    elsif change_info_question == "age"
      p "What would you like to change your age to?"
      @user_info[:age] = gets.chomp.to_i
    
    elsif change_info_question == "children"
    p "What would you like to change number of children to?"
    @user_info[:children] = gets.chomp.to_i

    elsif change_info_question == "decor"
    p "What would you like to change decor to?"
    @user_info[:decor] = gets.chomp.downcase

        elsif change_info_question == "married"
    p "What would you like to change marital status to?"
    @user_info[:married] = gets.downcase

        else change_info_question == "colors"
        p "Enter new colors one at a time and enter 'done' when finshed."
        @user_info[:colors] = []
        
           loop do 
             
              color_input = gets.chomp.downcase
              break if color_input == "done"
              @user_info[:colors] << color_input               
          end 
 
end


puts "Here is your updated information:"
@user_info.each {|keys, user_info| 
puts "-"*10

puts "#{keys}: #{user_info} "
puts "-"*10
}
