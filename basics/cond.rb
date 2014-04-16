=begin
Challenge

You will be given an array of numbers ar. Print each number 
in the array in the order it appears, unless the number is 
a multiple of 3. 
If a number is a multiple of 3, print no3 instead. (Make sure 
to print everything in a given array on the same line.)
=end
require 'pry'

def no3(arr)
  binding.pry
  str = ""
  arr.each do |x|
    # is x a multiple of 3?
    if(x%3 == 0)
      # yes, so output this string
      str << 'no3'
      # add a space unless it's the 
      # last member of the array
      str << ' ' unless x == arr.last
    else
      # no, so output the number
      str << x.to_s 
      # add a space unless it's the 
      # last member of the array
      str << ' ' unless x == arr.last
    end
  end
  str  
end

puts no3([6, 4, 3, 8, 10, 9, 11, 13])
                                                                                                    
