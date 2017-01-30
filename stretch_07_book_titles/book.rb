require 'pry'

class Book

  def initialize
    @title
  end

  def title=(string)
    little_words = ["in", "a", "the", "an", "to", "and", "of"]
    title = ""
    words = string.split
    words.each_with_index do |w,i|
      # First word
      if i == 0
        title << w.capitalize + " "

      # Not first word && are little_words
      elsif little_words.include?(w)
        title << w.downcase + " "

      else
        title << w.capitalize + " "
      end
    end

    @title = title.chomp(" ")
  end

  def title
    @title
  end

end

#p Book.new.title = "to eat an apple a day"
