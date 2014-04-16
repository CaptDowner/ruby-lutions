=begin
  Sum of Squares

  What is the sum of the squares of all the numbers from a to b (inclusive)?

  Add up the squares of all the numbers from a to b and return the sum.
=end
# require 'pry'

def sum_squares(a,b)
  sum = 0

  a.upto(b) do |x|
    sum = sum + (x * x)
  end

  puts sum.to_s
end


# Test examples
sum_squares(2,6)
print "Press Enter to continue:"
gets 
sum_squares(12,26)
print "Press Enter to continue:"
gets
sum_squares(32,63)
print "Press Enter to continue:"
gets
sum_squares(21,26)
print "Press Enter to continue:"
gets
sum_squares(12,26)
print "Press Enter to continue:"
gets
sum_squares(1,16)
print "Press Enter to continue:"
gets
sum_squares(5,19)
print "Press Enter to continue:"
gets
sum_squares(2,11)
print "Press Enter to continue:"
gets

