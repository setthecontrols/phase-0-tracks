

# take input = real name
# swap first and last name
# change vowels to next vowel and change consonants to the next consonent (.tr)

# write  methods
# 	one that splits input
# 	one that swaps input vowels for next vowel and consonants for next consonant
# 	one that joins arrays
# 	one that swaps first with last name


@tracker = {}
def scramble_name(name)
  
  new_name = []
  scrambled_name = name.tr("aeiou", "eioua").tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyzb")
  scrambled_name.split(" ").reverse
  split_name = scrambled_name.split
	new_name << split_name[0].capitalize
	new_name << split_name[1].capitalize
	final_name = new_name.join(" ")
  @tracker.store(name, final_name)
  # @tracker[:code_name] = final_name
  # @tracker[:orig_name] = name
   p final_name
 end

puts "Give me a name to scramble."
loop do 
puts "Enter as many names as you want.  Enter 'done' when finished."
name = gets.chomp.downcase
if name == "done"
      i = 0
  p "done"
  @tracker.each {| name, code_name| puts "This is your code name: #{code_name} and this is your real name: #{name}"}
    
  
  break
  
end
puts "Your new name is:"
scramble_name(name)
end