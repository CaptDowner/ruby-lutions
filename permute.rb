=begin
  Background

  Permutations are the number of possible orders for a given group of elements. 
  You can determine the permutation by multiplying by the number of possible 
  choices for each selection.

  For example, let's say you are given 4 distinct elements, and want to know how 
  many ways you can arrange 3 of them. You can pick from 4 elements for the first 
  choice, 3 for the second, and 2 for the third:

  4 Permute 3 = 4 * 3 * 2 = 24 possible ways


  Challenge

  Given two numbers a and b, calculate and return a Permute b as above.

=end
# require 'pry'

def permute(a,b)
  ary= []
  running_total=1
  # create an array of the number we wish to multiply
  0.upto(b-1) do
    ary << a
    a -= 1
  end
  # multiple each of ary's members
  0.upto(ary.size - 1) do |x|
    running_total = running_total * ary[x]
  end
  running_total
end

# Test cases
puts 'Testing Permutations program:'
puts 'Result should ==   24, ' + permute(4,3).to_s # should total 24
puts 'Result should == 6720, ' + permute(8,5).to_s # should total 6720
puts 'Result should == 5814, ' + permute(19,3).to_s # should total 5814

