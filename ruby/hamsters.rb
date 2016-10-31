
puts "Please provide the following information:"
puts "Hamster name"
name = gets.chomp
puts "Volume level from 1 - 10" 
level = gets.to_i
puts "fur color"
f_color = gets.chomp
puts "Is you're hamster a good candidate for adoption? y/n"
good_candidate = gets.chomp  #not working from 15 - 19          
  #if good_candidate (!"y" || !"n")
  #	puts "Answer must be either 'y' for yes or 'n' for no"
  #  good_candidate = getst.chomp
  #else
  #end
est_age = nil
puts "estimated age"
est_age = gets.to_f

puts ("Hamster's name is  #{name}, Noise level rank is #{level}, the color of #{name}'s fur is #{f_color}, #{name}'s #{est_age} years old.  Is #{name} a good candidate for adoption? #{good_candidate}")