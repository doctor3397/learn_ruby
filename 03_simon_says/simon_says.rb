def  echo(string)
  return string
end

def shout(string)
  return string.upcase
end

def repeat(string, num = 2)
  ("#{string} " * num).strip
end

def start_of_word(string, num)
  return string[0 ,num]
end

def first_word(string)
  return string.split(" ")[0]
end

def titleize(string)
  little_words = ["and", "the", "over"]
  final = []
  arr = string.split

  arr.each do |a|
    if not little_words.include?(a) && a != arr[0]
      final << ( a[0].upcase + a[1, a.length] )
    else
      final << a
    end
  end

  final.join(" ")
end
