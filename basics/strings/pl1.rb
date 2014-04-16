=begin
  The NSA may have broken some encryption methods, so your boss has 
  asked you to implement a new encryption standard - Pig Latin.

  To get started, complete a method that moves the first letter of 
  a given word to the end and adds an "ay" afterwards. For example, 
  "laptop" should become "aptoplay".
=end
require 'pry'

def add_ay(word)
  arr = []
  new_str = ""
  0.upto(word.size - 1) do |x|
    arr << word[x]
  end
  last_char = arr.shift

  arr << last_char << 'a' << 'y'
  arr.each do |x|
    new_str << x
  end
  new_str
end

puts add_ay("shit")
puts add_ay("fucking")
puts add_ay("situation")

