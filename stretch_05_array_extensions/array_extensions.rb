require 'pry'

class Array
  def hello
    return "Hello!"
  end

  def sum
    sum = 0
    self.each do |s|
      sum += s
    end
    sum
  end

  def square
    self.collect {|s| s**2}
  end

  def square!
    self.map! {|s| s**2 }
  end
end

p [1,2,3].sum
p [1,2,3].square!
