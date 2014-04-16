=begin
  No Sevens

  The next few challenges will involve loops, and this challenge 
  can get you started.

  The Kingdom of Zumbania recently banned the number 7. Please print 
  all the numbers from 1 to 50 but skip all multiples of 7. 
  
  Also, skip any number that has a 7 in it, such as 27
=end
# require 'pry'

def ban_7s
  0.upto(50) do |x|
    # skip if x is a multiple of 7 or contains a 7
    if( x % 7 == 0 || x.to_s.include?('7'))
    else
      puts x
    end
  end
end

ban_7s
