=begin
  Dice Roll 
  
  You're programming a backgammon game, and are working on the 
  dice roll method. Given two ints, return their sum. However, 
  if the two numbers are the same, return double their sum. 
=end
# require 'pry'

def add_dice(x,y)
  if x == y
    (x + y) *2
  else
    x + y
  end
end

def six_or_less(x,y)
  if(( x > 0 && x < 7) &&  (y > 0 && y < 7))
    puts (add_dice x,y).to_s
  else
    puts 'Both dice must be whole numbers from 1 to 6.'
  end  
end
# Test cases
puts 'Dice Roll:'
print 'six_or_less(2,4): ' 
six_or_less(2,4)
print 'six_or_less(7,4): ' 
six_or_less(7,4)
print 'six_or_less(2,9): ' 
six_or_less(2,9)
print 'six_or_less(5,5): ' 
six_or_less(5,5)
print 'six_or_less(2,1): ' 
six_or_less(2,1)


