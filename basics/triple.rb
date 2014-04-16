=begin
What does the following code return?
=end
require 'pry'

def triple(n)
  n * 3
end

puts (triple triple 2).to_s # returns 18
puts (triple triple 6).to_s # returns 54 
puts (triple triple 9).to_s # returns 81
