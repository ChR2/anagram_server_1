@dict_path = '~/usr/share/dict/words'

File.open('/usr/share/dict/words','r').each do |word|
  word = word.to_s.chomp.downcase
  word_sorted = word.chars.sort.join
  Word.create(:word => word, :word_sorted => word_sorted)
end
