=begin

  You finished handling vowel-words, so now its time to update the 
  consonant-words. In Pig Latin, all the consonants until the first vowel 
  should be moved to the end of the word. So while "laptop" will still be 
  "aptoplay", "string" should become "ingStray".

  Change your code so the first "consonant cluster" is moved to the 
  end of the word and "ay" is added after. A word that begin with a 
  vowel or a single consonant should return the same value as before.

=end
require 'pry'

def add_end_ay(word)
  binding.pry
  arr = []
  varr = ['a', 'e', 'i' ,'o', 'u']
  vowel = false
  doublec = false
  last_char = ''
  very_last_char = ''

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
    binding.pry
    last_char = arr.shift
    puts 'last_char = ' + last_char
    # should be a consonant in our first test
    chr = arr[0].downcase
    varr.each do |x|
      if x == chr
        vowel = true
      else
        very_last_char = arr.shift
        unless very_last_char == nil
          puts 'very_last_char = ' + very_last_char
        end
#       doublec = true
      end
    end
    puts arr
    arr << last_char
    binding.pry
    if very_last_char != ''
      arr << very_last_char
    end
  end
  arr << 'a' << 'y'
  binding.pry
  arr.each do |x|
    new_str << x
  end
  new_str
end

puts add_end_ay("shit")
#puts add_end_ay("fucking")
#puts add_end_ay("situation")

#puts add_end_ay("Autumn")
#puts add_end_ay("october")
#puts add_end_ay("yell")
#puts add_end_ay("Until")

#puts add_end_ay("sherlock")
#puts add_end_ay("cluster")
#puts add_end_ay("brew")
#puts add_end_ay("Until")



