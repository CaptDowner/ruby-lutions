=begin

  Markdown Word Converter

  As discussed in Web Development, all web pages consist of HTML. 
  HTML consists of tags like <b> and <i> which make text bold and italic. 
  However, HTML is a bit long and ugly to write it, so another syntax 
  called Markdown has become popular recently. To write italics in markdown, 
  you just surround a word with an asterisk on each side, and you use two 
  asteriks for bold:
  
  markdown syntax  HTML produced    Appearance
    **bold**       <b>bold</b>        bold
    *italics*      <i>italics</i>     italic

 To publish a markdown text to the web, you'll need a program to convert the 
 markdown to HTML, so you might as well create one. This challenge will just 
 deal with bold and italics.

 (A word must have asterisks on both sides to be marked as bold or italic.)
 Challenge

 Given a word, convert it from markdown to HTML (for bold and italic formatting) 
 and return the new word. If it doesn't have correct markdown formatting, 
 return the word as is.

 Example:
 given a String **bold**, return <b>bold</b>.
=end

require 'pry'

def md(word)
  arr = []
  new_str = ""

  if word[0] == '*' && word[word.size - 1] == '*'
    if word[1] == '*' && word[word.size - 2] == '*'
      # do bold
      new_str << "<b>" 
      2.upto(word.size - 3) do |x|
        new_str << word[x]
      end
      new_str << "</b>"
    else
      # do italic
      new_str << "<i>"
      1.upto(word.size - 2) do |x|
        new_str << word[x]
      end
      new_str << "</i>"
    end
  else
    new_str = word
  end
end

  # test cases
puts md("*italic*")
puts md("**bold**")
puts md("string")
puts md("***mariner***")
