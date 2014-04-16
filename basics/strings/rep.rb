=begin

 Repetition -  Given a String word that is n characters long, 
 create and return a new String that consists of n copies of word. 
 For example "abc" would become "abcabcabc".
=end
require 'pry'

def rep(str)
  0.upto(str.size - 1) do
    print str
  end
 
end

# Test cases
rep "Hello!"
puts
rep "Sushi!"
puts
rep "What the hell do you want! "
