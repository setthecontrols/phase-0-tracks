## Try The Thing
def dogs
	puts "Nice dog, there."
	yield("Shishi", 4)
end

# dogs {|name,age| puts "Why thank you.  His name is #{name} and is #{age} years old."}

## Do the thing #1

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
p drummers_drums_used


drummers = ["Buddy Rich", "Keith Moon", "Mitch Mitchell", "John Bonham", "Louie Bellson"]

drummers.each do | drummer |
 
  puts "#{drummer} is one of the best drummers of all time!"
  
end

no_moon = []
puts "I don't like Keith Moons' drumming, so I don't even want to see the letters of his name in these other greats' names...."
drummers.map! do | drummer |
    drummer.delete("Keith Moon")
end
p drummers

puts "Much better"
drummers.each do |new_name|
puts "Here are the new names: #{new_name}"

end

## Do The Thing #2 for arrays

#1
h = ["a","b","c","d"]

p h.delete_if { | letter | letter > "c" }

#2
h = ["a","b","c","d"]

letters_c_and_up = h.select {|letter| letter > "b" } 

p letters_c_and_up

#3
h = ["a","b","c","d"]
h.reject! {| letter | letter != "c" }

#4
h = ["a","b","c","d"]

h2 = h.drop_while {| letter| letter <= "b"}
p h2 

## Do The Thing #2 for hases
#1
hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4
}

hash.delete_if {| alpha, num | alpha > "c"}
p hash 

#2
hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4
}

hash.select! {| alpha, num | num <= 3}
hash

#3
hash = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4
}

hash.keep_if {| alpha, num | num == 3}

#4
hash.each_key do | alpha, num |
  if alpha < "c"
    hash.delete(alpha)
  end
end

