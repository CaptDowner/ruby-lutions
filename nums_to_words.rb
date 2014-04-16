=begin
  Logic and Loops
  Numbers to Words

  Given a number from 1 to 4 (inclusive), return a word 
  representation of the number. For example, given 2, return two. 
  If the number is greater than 4, return the phrase too large. 
  If the number is less than 1, return the phrase too small.
 -------------------------
=end
# require 'pry'

def check_num(x)
  if x > 4
    puts 'Too large'
  elsif x < 1
    puts 'Too small'
  else
    true
  end
end

# get input from the command line
def get_io
  word_nums = %w{zero one two three four}
 # prompt for the number of cases
 puts 'Enter the number of cases to check:' 
 # get first number
  str = gets
  # simply strip whitespace (no other error checks done)
  str.gsub! /\s+/, ""
  # convert to integer
  x = str.to_i 
  # followed by x number of lines
  0.upto(x-1) do
    str = gets
    # strip whitespace
    str.gsub! /\s+/, ""
    # convert character to integer
    y = str.to_i

    # check the range, output the result
    if check_num(y)
      puts word_nums[y]
    end
  end

  puts 'Program is done.'
end

get_io
