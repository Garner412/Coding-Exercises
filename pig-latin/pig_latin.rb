def convert_word_to_pig_latin(word)
  if %w(a e i o u).include?(word[0])
    word
  else
    consonants = word.slice!(0..word.index(/[aeiou]/) - 1)
    word.insert(-1, consonants) + "ay"
  end
end

def convert_sentence_to_pig_latin(sentence)
  translated = []
  sentence.split.each do |word|
    translated << convert_word_to_pig_latin(word)
  end
  translated.join(' ')
end
