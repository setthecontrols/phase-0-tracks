# 20161028 1808




current_year = Time.new.year
puts "How many employees are being processed?"
empl_num = gets.chomp.to_i
  while empl_num >0
    puts "what is your name?"
    name = gets.chomp
    puts "what is your age?"
	age = gets.to_i 
	puts "what year were you born?"
	birth_year = gets.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_bread = gets.chomp
	puts "Would you like to enroll in the company’s health insurance?"
	insurance = gets.chomp
      
	  if (name == "Drake Cula") || (name == "Tu Fang")
  	    puts("Definitely a vampire!")
          elsif (current_year - birth_year != age) && (garlic_bread != "yes") && (insurance != "yes")
            puts "Almost certainly a vampire."
              elsif (current_year - birth_year != age) && (garlic_bread != "yes" || insurance != "yes")
                puts("Probably a vampire")
                  elsif (current_year - birth_year == age) && (garlic_bread != "no")
                    puts("Probably not a vampire.")
     else
  	  puts("Results incunclusive")
     end
     empl_num = empl_num - 1
  end  
  
# working on this: 2133
# current_year = Time.new.year

# puts "How many employees are being processed?"
# empl_num = gets.chomp.to_i
# while empl_num >0
#   puts "what is your name?"
#   name = gets.chomp
#   puts "what is your age?"
#   age = gets.to_i 
#   puts "what year were you born?"
#   birth_year = gets.to_i
#   puts "Our company cafeteria serves garlic bread. Should we order some for you?"
#   garlic_bread = gets.chomp
#   puts "Would you like to enroll in the company’s health insurance?"
#   insurance = gets.chomp

#   if (name == "Drake Cula") || (name == "Tu Fang")
#   puts("Definitely a vampire!")
#     elsif (current_year - birth_year != age) && (garlic_bread != "yes") && (insurance != "yes")
#         puts "Almost certainly a vampire."
#       elsif (current_year - birth_year != age) && (garlic_bread != "yes" || insurance != "yes")
#         puts("Probably a vampire")
#           elsif (current_year - birth_year == age) && (garlic_bread != "no")
#             puts("Probably not a vampire.")
#     else
#   	  puts("Results incunclusive")
#   end
#   empl_num = empl_num - 1 
# end  