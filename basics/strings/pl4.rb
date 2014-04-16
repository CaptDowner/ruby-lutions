=begin
  Pig Latin Finale

  To finish your program, you need to handle sentences, not just words. Create new code 
  that converts each word in a sentence into pig latin and then returns the complete pig 
  latin sentence. For example,

  "knowledge is power"
  should return:
  "owledgeknay isay owerpay"

Psuedo-code:

  If the first char is a vowel, 

  add "ay" to the end of the word.

  Loop
  If the first char is not a vowel, move char to the end 
  continue until you reach a vowel, then break the loop
  Loop

  then add "ay" to the end of the word.

  If you reach the end of the word, 

  add "ay" to the end of the word.
  
  Always return the word.
  
=end
require 'pry'


def consonant?(ch)
  varr = ['a', 'e', 'i' ,'o', 'u']

  if varr.include? ch[0].downcase
    return false
  end
  true
end

def add_end_ay(word)
  done=false
  arr = []
  last_char = ''
  very_last_char = ''

  new_str = ""

  lower_word = word.downcase

  0.upto(word.size - 1) do |x|
    arr << word[x]
  end

  if(!(consonant? arr[0]))
    done = true
  end

  while(!done)
    ch = arr.shift
    arr << ch
    if(!(consonant? arr[0]))
      done = true
    end
  end

  arr << 'a' << 'y'

  arr.each do |c|
    new_str << c
  end

  new_str
end


def pig_latin(str)
  arr = str.split
  new_str = ""

  arr.each do |w|
   new_str << add_end_ay(w) << " "
  end
  new_str
end

# Test cases
puts pig_latin("This is a shitty mess you got us into")
puts pig_latin("Shoot you to the moon I will you fucking bastard")
puts pig_latin("What the world needs now is love sweet love")

puts pig_latin("Autumn is great in New York")
puts pig_latin("Do you remember the twentyfirst night in September")
puts pig_latin("I love that old time rock and roll")
puts pig_latin("Until summer comes there will be no fruit on the treez")

puts pig_latin("sherlock holmes was a transient character in Connan Doyle novels")



