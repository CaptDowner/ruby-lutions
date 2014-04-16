=begin
  Collatz Conjecture  
  
  The Collatz Conjecture (which was seen in the If Challenge), goes like this:

  Take any number n. If n is even, divide it by 2, if n is odd, 
  multiply it by 3 and add 1. Repeat the process indefinitely, 
  and you'll eventually reach 1.

  A Collatz sequence is the sequence of numbers generated from a specific number. 
=end
# require 'pry'

def colatz(m)

  if m % 2 == 0
    m = m/2
  else
    m = (m * 3) + 1
  end
  if m == 1
    puts m
  else
   puts m
   colatz(m)
  end
end



colatz(7)
colatz(4)
colatz(36)
