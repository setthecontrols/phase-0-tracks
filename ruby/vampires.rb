# 20161028 1808
current_year = Time.new.year

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

if (current_year - birth_year == age) && (garlic_bread != "no")
  puts("Probably not a vampire.")
    elsif (current_year - birth_year != age) && (garlic_bread != "yes") && (insurance != "yes")
        puts "Almost certainly a vampire."
    elsif (current_year - birth_year != age) && (garlic_bread != "yes" || insurance != "yes")
      puts("Probably a vampire")
    else
  	  puts("Results incunclusive")
end  
end  	  
# working on this: 1858

# if (current_year - birth_year != age) && garlic_bread = "no"
#   puts("Probably a vampire")
#   else
#   	puts("Results incunclusive")
# end    

# if (current_year - birth_year != age) && (garlic_bread != "yes" || insurance != "yes")
#   puts("Probably a vampire")
#   else
#   	puts("Results incunclusive")


#  working on this:  1940
#  current_year = Time.new.year

# #puts "what is your name?"
# #name = gets.chomp
# puts "what is your age?"
# age = gets.chomp.to_i 
# puts "what year were you born?"
# birth_year = gets.chomp.to_i
# puts "Our company cafeteria serves garlic bread. Should we order some for you?"
# garlic_bread = gets.chomp
# puts "Would you like to enroll in the company’s health insurance?"
# insurance = gets.chomp

# if (current_year - birth_year != age) && (garlic_bread != "yes" || insurance != "yes")
#   puts("Probably a vampire")
#   else
#   	puts("Results incunclusive")
# end    