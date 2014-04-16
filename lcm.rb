=begin 
 Least Common Multiplier
 Loops

 In this challenge, see if you can use your knowledge of loops, 
 the % operator and some math to come up with an algorithm to 
 solve an important math problem.

 Challenge
 Given two numbers a and b can you return their Least Common Multiple (LCM)? 
 A LCM of a and b is the smallest number that is a multiple of both a and b.

 (Remember you can use % to check if a number divides evenly into another number.)
 
 Challenge

 Given two numbers a and b return their LCM.
=end
# require 'pry'
require 'rational'

# Ruby has an Integer method Integer#lcm 
# which handles this nicely
def least_common(x,y)
  x.lcm y
end

# Roll your own: This one takes any number of integers
def lcm2(*args)
  args.inject(1) do |m, n|
    next 0 if m == 0 or n == 0
    i = m
    loop do
      break i if i % n == 0
      i += m
    end
  end
end

# Test cases:
puts least_common(12,18).to_s
puts least_common(15,22).to_s
puts least_common(23,49).to_s
puts
puts lcm2(17,6,13).to_s
puts lcm2(29, 5, 16,19).to_s
