=begin
  In Ruby on Rails, pages are created with templates which use 
  the yield statement. The code below passed a block to a template 
  function that still needs to be written.

  Create a function below called template that prints the word "start", 
  then yields a block passed to it, and then prints the word "end".

  ( It shouldn't add any newlines.)
=end

require 'pry'

def template
  print "start " 
  if block_given?
    yield
  end  
  print "end"
end

# Test cases

template
puts
template { print "-- stuck in the middle -- " }
puts 
template { 0.upto(2) do print 'Don\'t try this at home! ' end }
puts
