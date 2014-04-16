=begin

  You finished handling vowel-words, so now its time to update the 
  consonant-words. In Pig Latin, all the consonants until the first vowel 
  should be moved to the end of the word. So while "laptop" will still be 
  "aptoplay", "string" should become "ingStray".

  Change your code so the first "consonant cluster" is moved to the 
  end of the word and "ay" is added after. A word that begin with a 
  vowel or a single consonant should return the same value as before.


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


def consonant?(chr)
  varr = ['a', 'e', 'i' ,'o', 'u']
  # return false when we entounter a vowel
  if varr.include? chr[0]
    return false
  end
  true
end


def add_end_ay(word)
  arr = []
  doublec = false
  last_char = ''
# very_last_char = ''
  new_str = ""
  # simplify testing by converting
  # a copy to lowercase
  lower_word = word.downcase

  # convert string to array of chars
  0.upto(word.size - 1) do |x|
    arr << word[x]
  end

  # See if the first character of
  # the lowercased word is a vowel
  if(!consonant? lower_word[0])
    done = true   # found a vowel, so we're done
  end

  # loop until done
  while !done
    last_char = arr.shift
    arr << last_char
    if(!consonant?(arr[0]))
      done = true
    end
  end
  # Add this ending to all words
  arr << "a" << "y"
  # convert array to new_str
  arr.each do |c|
    new_str << c
  end
  # return new_str
  new_str
end

def pig_talk(str)
  out_str = ""

  arr = str.split
  arr.each do |s|
    out_str << add_end_ay(s) << ' '
  end
  out_str
end



# Test cases
puts add_end_ay("This is shit")
puts add_end_ay("You dirty rat bastard")
puts add_end_ay("Straight to the moon, where to send you I will")
=begin
puts add_end_ay("Autumn")
puts add_end_ay("october")
puts add_end_ay("yell")
puts add_end_ay("Until")

puts add_end_ay("sherlock")
puts add_end_ay("cluster")
puts add_end_ay("brew")
puts add_end_ay("Until")
puts add_end_ay("straight")
=end

