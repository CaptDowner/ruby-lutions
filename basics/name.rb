require 'pry'


def name
  print "Enter a name: " 
  name = gets.rstrip!

  puts "Hello #{name}!"
end

name


