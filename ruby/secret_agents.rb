# pseudocod - encrypt

# define method to work with a string
# set an index to 0
# create an object to store encrypted string in
# parse over string, position by position in index until end of string
# advance character at each string index position to next character in sequence until end of string and store the affected characters in object for encrypted string
# print new string


def encrypt(string)
	encrypted = ""
	i = 0
	puts"what password would you lie to encrypt?"
	string = gets.chomp
	while i < string.length
		if string[i] == " "
		elsif string[i] == "z" 
		string[i] = "a"
		else		
		string[i] = string[i].next! 
	end
	i = i + 1
	end
	puts string
end


#encrypt("zed")	

# pseudocode - decrypt

#define method to take string 
# declare alphabet container - alpha
# declare decrypted string container - decrypted
# set index to 0 - i
# take input as string
# parse input at each index position
# decrement character
# store each decremented character in object 
# print decremented character object

def decrypt(string)
	#decrypted = ""
#	alpha = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    alphabet = "abcdefghijklmnopqrstuvwxyz"
	i = 0
	a = 0
	puts"what password would you lie to decrypt?"
	string = gets.chomp
		while i < string.length
		if string[i] == " "
		else 
		temp = alphabet.index(string[i])
		temp = temp - 1 
		string[i] = alphabet[temp]
	    end
	    i = i + 1
	end
	puts string
end

decrypt(encrypt("swordfish"))

