words = File.read("app/words")

words.each_line do |word|
  word = word.delete!("\n")
  sorted_word = word.downcase.split(//).sort.join
  Word.create(word: word, word_sorted_downcase: sorted_word)
end