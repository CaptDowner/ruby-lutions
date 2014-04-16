=begin
  Tip Calculator

  You are working on an app to calculate tips. 
  Given 2 ints: a, for the purchase amount in cents, and b, 
  for the quality of service received, can you calculate 
  the tip in cents? Round the answer down to the nearest cent. 

  The tip percentage should follow the table below.

  Service Tip Table
  Rating  Percent   decimal
    1       5%       0.05
    2      10%       0.1
    3      15%       0.15
    4      20%       0.2
    5      25%       0.25
=end
# require 'pry'
$tip_table = [ 0.05, 0.1, 0.15, 0.2, 0.25]

def get_tip(bill,service)
  # check for invalid input
  if(service > 5 || service < 1)
    puts 'Error: Service == ' + service.to_s + ' which is not >= 1 nor <= 5 so "$ 0.00" will be returned.'
    return 0.00
  end
  # valid input, so calculate the tip
  return(bill.to_i * $tip_table[service-1])
end

# Test cases
#
puts 'Tip Calculator:'
puts 'get_tip(100,5): ' << "$ %3.2f" % get_tip(100,5)
puts 'get_tip(100,4): ' << "$ %3.2f" % get_tip(100,4)
puts 'get_tip(100.24,3): ' << "$ %3.2f" % get_tip(100.24,3)
puts 'get_tip(142.78,2): ' << "$ %3.2f" % get_tip(142.78,2)
puts 'get_tip(100,1): ' << "$ %3.2f" % get_tip(100,1)
puts 'get_tip(100,6): ' << "$ %3.2f" % get_tip(100,6)
puts 'get_tip(100,0): ' << "$ %3.2f" % get_tip(100,0)
puts 'get_tip(750,5): ' << "$ %3.2f" % get_tip(750,5)
