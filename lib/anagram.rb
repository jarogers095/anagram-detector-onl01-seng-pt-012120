# Your code goes here!
class Anagram
  attr_accessor(:word)
  
  def initialize(new_word)
    @word = new_word
  end
  
  def match(possible_anagrams)
    original_split_sort = @word.split("").sort
    confirmed_anagrams = possible_anagrams.collect do |anagram|
      original_split_sort == anagram.split("").sort
    end
    return confirmed_anagrams
  end
  
end