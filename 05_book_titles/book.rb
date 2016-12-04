class Book
  def title= (str)
    words = str.split
    capped_words = Array.new
    words_not_capped = ['the', 'a', 'an', 'and', 'in', 'of']

    #first word always capitalized
    capped_words.push(words[0][0].upcase + words[0][1..-1])

    #process rest of words
    words[1..-1].each do |word|
      if words_not_capped.include?(word)
        capped_words.push(word)
      else
        capped_words.push(word[0].upcase + word[1..-1])
      end
    end

    #join words and set title 
    @title = capped_words.join(" ")
  end

  def title
    return @title
  end
end
