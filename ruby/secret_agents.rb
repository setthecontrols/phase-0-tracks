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
	
	while i < string.length
		encrypted = encrypted + string[i].next 
		i = i + 1

	end
	encrypted
end


encrypt("zed")	

# pseudocode - decrypt
# take input as string
# parse input at each index position
# decrement character
# store each decremented character in object 
# print decremented character object

def decrypt(string)
	decrypted = ""
	alpha = "abcdefghijklmnopqrstuvwxyz"
	i = 0
	a = 0
	while i < string.length
		if string[i] = alpha[a] 
		decrypted = decrypted + (alpha[-a]) 
		a = a + 1
	    end
	    i = i + 1
	end
	decrypted
end


decrypt("zed")	