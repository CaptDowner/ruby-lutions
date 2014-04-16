=begin

  The Kingdom of Zumbania decided to ban the letter 'e'. 
  Create a method that replaces every 'e' in a String with an 'a'.

  Note: Capital E's should be replaced with Capital A's.
=end
require 'pry'

def rep_ez(str)
  binding.pry
  0.upto(str.size - 1) do |x|
    case str[x]
    when 'e'
      str[x] = 'a'
    when 'E'
      str[x] = 'A'
    end
  end  
  str
end

# Test cases
puts rep_ez("Now is the time for all good men to come to the aid of their party.")
puts rep_ez("NOW IS THE TIME FOR ALL GOOD MEN TO COME TO THE AID OF THEIR PARTY!")
puts
puts rep_ez("I'm feeling like eating something sweet!")
puts rep_ez("How sweet is it to be loved by you! EEEEEEEEK!")
