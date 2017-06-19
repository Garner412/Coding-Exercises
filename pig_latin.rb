# Your code here
"""
IF the word starts with a vowel, return the word
ELSE return the word's pig latin
  - move all leading consonants to the end of the word and add suffix ay
END
"""

def convert_word_to_pig_latin(word)
  if %w(a e i o u).include?(word[0])
    word
  else
    consonants = word.slice!(0..word.index(/[aeiou]/) - 1)
    word.insert(-1, consonants) + "ay"
  end
end


"""
FOR each word in the sentence.
  convert each word
RETURN complete sentence
"""

def convert_sentence_to_pig_latin(sentence)
  translated = []
  sentence.split.each do |word|
    translated << convert_word_to_pig_latin(word)
  end
  translated.join(' ')
end

p convert_sentence_to_pig_latin("This is a test sentence")
