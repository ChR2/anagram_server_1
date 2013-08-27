class Word < ActiveRecord::Base
  # Remember to create a migration!
  # @word = Word.create(:word)
  
  def self.get_anagrams(word)
    sorted = word.to_s.chomp.downcase.chars.sort.join
    anagram_list = Word.select(:word).where('word_sorted like?', sorted)
    word_string = ''
    anagram_list.each do |word|
      word_string << "#{word.word} "
    end
    word_string
  end

end
