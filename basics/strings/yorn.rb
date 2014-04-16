=begin

  You're working on an interactive text-based menu that asks 
  the user Yes-or-No questions. Users are supposed to reply 
  with just 'y' or 'n', but sometimes they add other characters, 
  such as "yes" or "no".

  Complete a method that checks the first character of a String 
  and returns a String according to the following table:


  first character of input  return following String
                   'y'   1
                   'n'   0
  any other character   -1
=end

require 'pry'

def yorn(str)
  case str[0]
  when 'y'
    1
  when 'n'
    0
  else
    -1
  end
end

# Test cases
puts yorn("y").to_s
puts yorn("n").to_s
puts yorn("apple").to_s
puts yorn("nothing").to_s
puts yorn("yesman this is a great string! I mean Spring!")
puts yorn("fuck this!")



