20161028 1808
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

if (current_year - birth_year) == age && garlic_bread = "yes"
  puts("Probably not a vampire.")
  else
  	puts("Probably a vampire")
end  