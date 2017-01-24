def translate(string)
  vowels = ["a", "e", "i", "o", "u"]
  result = ""

  string.split.each do |word|
    # starting_with_vowel
    if vowels.include?(word[0])
      result << word << "ay "

    # starting_with_consonant
    else
      if word.include?("qu")              #     1                   1
        arr = word.split(/([qu]+)/)     # ["", "qu", "ite"] # ["s", "qu", "are"]
        qu_pos = arr.index("qu")
        len = word.length
        result << arr[qu_pos + 1,len].join << arr[0, qu_pos + 1].join << "ay "
      else                              # ["b", "a", "n", "a", "n", "a"]
        arr = word.split(/([aeiou]+)/)  # ["ch", "e", "rry"]
        len = word.length
        result << arr[1,len].join << arr[0] << "ay "
      end
    end
  end

  result.strip
end
