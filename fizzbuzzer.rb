=begin
  FizzBuzzer

  In the last challenge, you printed 100 lines and changed the 
  numbers every 3 or 5 times. In this challenge, you will be 
  given three integers n, a and b as input which will tell you 
  how many lines to print and when to print Fizz or Buzz.

  Write a program that prints the numbers from 1 to n. But for multiples 
  of a print “Fizz” instead of the number and for the multiples of b print 
  “Buzz”. For numbers which are multiples of both a and b print “FizzBuzz”.

  Note: Print each item space-separated, and each test case on its own line.
=end
# require 'pry'


def fizzbuzzer(n,a,b)
  1.upto(n ) do |x|
    if(x % a == 0 && x % b == 0)
      puts 'FizzBuzz'
    elsif x % a == 0 
      puts 'Fizz'
    elsif x % b == 0
      puts 'Buzz'
    else
      puts x
    end
  end

end

# Test cases
fizzbuzzer(18,4,3)
fizzbuzzer(54,9,6)
fizzbuzzer(44,3,9)
fizzbuzzer(57,8,3)
fizzbuzzer(114,11,13)
fizzbuzzer(62,6,5)
fizzbuzzer(81,11,7)
