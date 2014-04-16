=begin
  Correct Change II

  You are given a certain number of nickels and pennies  and a desired sum of cents. 
  Is it possible to select the exact change to reach that sum?

  You will be given three numbers as input - nickels, pennies and sum. 
  Return true if you can select coins to reach sum exactly, and false otherwise.

  Note: In this challenge, you can be given any number of nickels but only 0 to 4 pennies
=end
# require 'pry'

def exact_change(x,y,sum)
  nickels=0
  pennies=0
  nickels_needed = sum / 5
  pennies_needed = sum % 5
  # check number of pennies and convert them to nickels 
  # to make our math work with the current method
  # if we have more than 4 pennies, then convert them to nickels
  if y > 4
    # convert to extra pennies to nickels
    nickels = (y / 5) + x 
    # remainder of pennies after nickel conversion
    pennies = y % 5
  else
    nickels = x 
    pennies = y 
  end

  if(nickels_needed <= nickels && pennies_needed <= pennies)
    true
  else 
    false
  end
end

# these test cases should be true
puts 'These test cases should be true:'
puts 'exact_change(2,1,11) = ' << exact_change(2,1,11).to_s
puts 'exact_change(3,0,15) = ' << exact_change(3,0,15).to_s 
puts 'exact_change(1,1,6)  = ' << exact_change(1,1,6).to_s  
puts 'exact_change(3,1,14) = ' << exact_change(3,1,16).to_s 
puts 'exact_change(2,0,10) = ' << exact_change(2,0,10).to_s  
puts 'exact_change(0,4,4)  = ' << exact_change(0,4,4).to_s   
puts 'exact_change(3,3,15) = ' << exact_change(3,3,15).to_s 
# these test cases should be false
puts 'These test cases should be false:'
puts 'exact_change(18,2,143) = ' << exact_change(18,2,143).to_s  
puts 'exact_change(3,0,14)   = ' << exact_change(3,0,14).to_s  
puts 'exact_change(1,4,10)   = ' << exact_change(1,4,10).to_s  
puts 'exact_change(5,1,22)   = ' << exact_change(5,1,22).to_s  
puts 'exact_change(0,4,5)    = ' << exact_change(0,4,5).to_s   
puts 'exact_change(0,2,11)   = ' << exact_change(0,2,11).to_s  

