#write your code here

def echo(words)
  return words
end

def shout(words)
  return words.upcase
end

def repeat(words, times = 2)
  if times == 2
    return echo(words) + " " + echo(words)
  end

  return echo(words) + " " + repeat(words, times-1)
end

def start_of_word(word, letters)
  if letters == 1
    return word[0]
  end

  return word[0] + start_of_word(word[1..-1], letters - 1)
end

def first_word(words)
  new_word = ""
  while words[0] != " "
    new_word += words[0]
    words = words[1..-1]
  end

  return new_word
end

def titleize(words)
  words = words.split # splits at space
  first = true
  capped_words = Array.new
  little_words = ['in', 'the', 'a', 'and', 'or', 'an', 'over']

  words.each do |word|
    if little_words.include?(word) and not first
      capped_words.push(word)
      first = false
    else
      capped_words.push(word[0].upcase + word[1..-1])
      first = false
    end
  end

  return capped_words.join(" ")
end
