=begin
  Pig Latin II - If the first letter in a word is a vowel (a,e,i,o,u), 
  you should leave it where it is and just add "ay" to the end of the word. 
  For example, "Art" should become "Artay". Modify your previous code so 
  it handles vowel-words correctly.
=end
require 'pry'

def add_end_ay(word)
  arr = []
  varr = ['a', 'e', 'i' ,'o', 'u']
  vowel = false
  new_str = ""
  0.upto(word.size - 1) do |x|
    arr << word[x]
  end

  varr.each do |x|
    if x == arr[0].downcase
      vowel = true
    end
  end
  if !vowel
    last_char = arr.shift
    arr << last_char 
  end
  arr << 'a' << 'y'

  arr.each do |x|
    new_str << x
  end
  new_str
end

puts add_end_ay("shit")
puts add_end_ay("fucking")
puts add_end_ay("situation")

puts add_end_ay("Autumn")
puts add_end_ay("october")
puts add_end_ay("yell")
puts add_end_ay("Until")



