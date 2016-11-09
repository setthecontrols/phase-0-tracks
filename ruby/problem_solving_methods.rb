
# Call index position
arr = [3,6,2,8,10,9]
def search_array(arr, int)
arr.take_while {|x| x != int}.length
# if int == -1 ## this didn't work and we couldn't come up with something that would return nil if the int wasn't in the array
# 	return nil
# end
end
puts search_array(arr,25)

# Release 1: trashed version1
# def fib(num)
# num = num - 2
# fib_arr = [0,1]
# i = 0
#   while i < num
#   	fib0 = fib_arr[i]
#   	p fib0
#   	fib1 = fib_arr[i]+1
#   	p fib1
#   	p fib0 + fib1

#     fib_arr[i]+2 << fib0 + fib1
#     i = i + 1
#   end 
# p fib_arr
# end

# 20162300, Release 1: trashed version2 (multiple versions because i drove this one)
# def fib(num)
# num = num - 2
# fib_arr = [0,1]
# i = 0
#   while i < num
#   	fib0 = fib_arr[i]
#   	p fib0
#   	fib1 = fib_arr[i]+1
#   	p fib1
#   	p fib0 + fib1

#     fib_arr[i]+2 << fib0 + fib1
#     i = i + 1
#   end 
# p fib_arr
# end
# p fib(20)

# 20162327, Realease1: Final version fib
def fib(num)
num = num - 2
fib_arr = [0,1]
i = 0
fib0 = 0 
fib1 = 1
  while i < num
  holder = fib0
  fib0 = fib1
  fib1 = holder+fib1
    fib_arr << fib1
  
  	# fib0 = fib_arr[i]
  	# p fib0
  	# fib1.to_s = fib_arr[i]+1
  	# p fib1
  	# p fib0 + fib1

    # fib_arr << fib0 + fib1
    # p fib_arr
    i = i + 1
  end 
return fib_arr
end

p fib(100)



# Array Sort - bubble algorithm 

def bubble(arr)
    
 n = arr.length
 loop do
   switch = false

  (n-1).times do |x|
     if arr[x] > arr[x+1]
      arr[x], arr[x+1] = arr[x+1], arr[x]
      switch = true
     end
  end

  break if not switch
 end
arr
end


arr = [5, 2, 1, 4, 3]
p bubble(arr)