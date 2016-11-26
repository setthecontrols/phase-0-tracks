def dogs
	puts "Nice dog, there."
	yield("Shishi", 4)
end

dogs {|name,age| puts "Why thank you.  His name is #{name} and is #{age} years old."}