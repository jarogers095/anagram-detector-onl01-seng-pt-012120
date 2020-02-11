# Your code goes here!
class Anagram
  attr_accessor(:word)
  
  def initialize(new_word)
    @word = new_word
  end
  
  def match(possible_anagrams)
    original_split_sort = @word.split("").sort
    confirmed_anagrams = []
    
    possible_anagrams.each do |anagram|
      if original_split_sort == anagram.split("").sort
        confirmed_anagrams << anagram
      end
    end
    
    return confirmed_anagrams
  end
end