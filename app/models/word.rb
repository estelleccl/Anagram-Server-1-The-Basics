class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams_for(word)
    anagram = []
    word = word.downcase.split(//).sort.join
     Word.where(word_sorted_downcase: word).each do |x|
        anagram << x.word
      end
    anagram
  end

end
