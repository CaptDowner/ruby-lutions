=begin
  You will be given an array of numbers ar. Create and print 
  another array of length 2 that just contains the first and 
  last number in the original array.

  (Note: To print an array ar, just use print ar. 
  To print a newline, use "\n".)
=end

def print_a2(arr)
  new_arr = []
  new_arr << arr.first << arr.last
  print new_arr
  print "\n"
end

print_a2([4,5,6,7,8])

print_a2([20,21,22,23,24,25,26,27,28,29,30])

