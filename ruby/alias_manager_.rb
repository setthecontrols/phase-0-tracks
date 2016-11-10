def reverse_advance(name)
  #name = "thunder clap"
  name.split(' ').reverse.join(' ').tr( "aeiou " ,  "eioua ").tr( "bcdfghjklmnpqrstvwxyz " ,  "cdfghjklmnpqrstvwxyzb ")
  end
# reverse_advance("BIll flOviateR".downcase)

# def interface(name)
	name = ""
	_alias = ""
	alias_store = []
	names_store = []
	
	while name != "done"
	  puts "Give me as many names as you want to change and enter  'done' to stop."
	    name = gets.chomp.downcase
	reverse_advance(name)
	names_store << name
	_alias = reverse_advance(name)
	alias_store << _alias
	p _alias
	end 
# end
	i = 0
    while i < names_store.length - 1
    	puts "Here are all the names we changed: #{names_store[i]}, aka #{alias_store[i]}"
    	i = i + 1
    end 

