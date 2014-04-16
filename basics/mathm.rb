=begin

  Ruby's Math module contain a large number of useful functions. 
  Call Math's sqrt function on the number 25.
=end
require 'pry'

include Math

res = Math.sqrt(25).to_s

puts res

