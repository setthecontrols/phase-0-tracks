# Release 0 - this returns nil in repl, but not the command line.  Which one should I trust?
def search_array(arr, num)
i =0 
while i < arr.length
  if num == arr[i]
    p i
  else
    break
  end
  i += 1
end

end
arr = [42, 89, 23, 1]
search_array(arr,4)


