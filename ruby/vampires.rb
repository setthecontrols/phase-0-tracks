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
     allergies = ""
     puts "Do you have any allergies you would like to list? Enter them one-by-one and type done when all listed."
      until allergies == "done"
      
      allergies = gets.chomp
        if allergies == "sunshine"
          puts "Probably a vampire!"
        end
      end  
     empl_num = empl_num - 1
  end  
  
  puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends"