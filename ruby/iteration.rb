def dogs
	puts "Nice dog, there."
	yield("Shishi", 4)
end

dogs {|name,age| puts "Why thank you.  His name is #{name} and is #{age} years old."}



drummers_drums_used = {
	"Buddy Rich" => ["Ludwig"],
	"Keith Moon" => ["Premier"],
	"Mitch Mitchell" => ["Ludwig"],
	"John Bonham" => ["Ludwig"],
	"Louie Bellson" => ["Rogers"]
}



drummers_drums_used.each do |drummer, drums |
  puts "#{drummer} played #{drums} drums."
end
  puts "But Louie also played Slingerland, so let's add that now:"
drummers_drums_used.each do |drummer, drums|
  if drummer == "Louie Bellson"
    drummers_drums_used["Louie Bellson"][1] = "Slingerland"
  end
end
drummers_drums_used
