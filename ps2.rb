=begin
  Pirate Ship II

  You're the captain of a pirate ship and would like to calculate whether 
  your trip was a success. You are given two parameters - gold and pirates.

  The trip is a success if there is at least as much gold as pirates. 
  However, if gold + pirates > 100, then the trip is a failure, since  the ship 
  may sink. Return true if the ship was a success and false if it was a failure. 
=end
require 'pry'

$words = %w{ Bad Good Great}

def trip_success2(pirates,gold)
  if (pirates + gold) > 100
    0
  elsif gold > pirates
    1
  elsif gold == pirates
    2
  else
    0
  end
end

# Test cases:
puts 'Pirate Ship I'
res = trip_success2(50,50)
puts 'trip_success2(50,50) result: ' + res.to_s + ' which is ' + $words[res] + '!'

res = trip_success2(50,51)
puts 'trip_success2(50,51) result: ' + res.to_s  + ' which is ' + $words[res] + '!'
 
res = trip_success2(5,6)
puts 'trip_success2(5,6) result: ' + res.to_s   + ' which is ' + $words[res] + '!'

res = trip_success2(6,5)
puts 'trip_success2(6,5) result: ' + res.to_s   + ' which is ' + $words[res] + '!'

res = trip_success2(48,48)
puts 'trip_success2(-6,-5) result: ' + res.to_s   + ' which is ' + $words[res] + '!'

res = trip_success2(-106,-108)
puts 'trip_success2(-106,-108) result: ' + res.to_s   + ' which is ' + $words[res] + '!'


