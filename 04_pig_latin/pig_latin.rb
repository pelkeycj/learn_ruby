#write your code here

def translate(words)
  words = words.split
  trans_words = Array.new
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ''

  words.each do |word|
    if vowels.include?(word[0].downcase)
      trans_words.push(word + 'ay')
    else
      #handle multiple consonants
      while not vowels.include?(word[0])
        #handle qu
        if word[0] == 'q' and word[1] == 'u'
          consonants += 'qu'
          word = word[2..-1]
        else
          consonants += word[0]
          word = word [1..-1]
        end
      end
      trans_words.push(word + consonants + 'ay')
      consonants = ''
    end
  end

  return trans_words.join(' ')
end
