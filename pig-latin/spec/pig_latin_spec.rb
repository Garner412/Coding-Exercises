require_relative('../pig_latin')

describe 'Converting single words to Pig Latin' do
  it 'returns words that begin with a vowel' do
    expect(convert_word_to_pig_latin("apple")).to eq "apple"
  end
  it 'converts "challenge" to "allengechay"' do
    expect(convert_word_to_pig_latin("challenge")).to eq "allengechay"
  end
end

describe 'Converting a sentence to Pig Latin' do
  it 'converts "This is a test sentence" to "isThay is a esttay entencesay"' do
    expect(convert_sentence_to_pig_latin("This is a test sentence")).to eq "isThay is a esttay entencesay"
  end
end
