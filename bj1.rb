=begin
  Blackjack I

  You're writing a program to play a BlackJack variety and 
  need to write a method to handle the score.

  In general, given two numbers, a and b, return their sum. 
  However, if the sum is greater than 21, return 0 instead 
  (since the player has "gone bust").
=end
# require 'pry'

def handle_score(a,b)
  if a + b > 21
    0
  else
    a + b
  end  
end

# Test cases

puts 'handle_score(10,7)   = ' + handle_score(10,7).to_s
puts 'handle_score(0,7)    = ' + handle_score(0,7).to_s
puts 'handle_score(10,7)   = ' + handle_score(10,7).to_s
puts 'handle_score(10,7)   = ' + handle_score(10,7).to_s
puts 'handle_score(10,7)   = ' + handle_score(10,7).to_s
puts 'handle_score(20,2)   = ' + handle_score(20,2).to_s
puts 'handle_score(-10,17) = ' + handle_score(-10,17).to_s
puts 'handle_score(-10,37) = ' + handle_score(-10,37).to_s

