require 'pry'

class Temperature

  attr_accessor :to_fahrenheit, :to_celsius

  def initialize(temp)
    @fahrenheit = temp[:f]
    @celsius = temp[:c]
  end

  def to_fahrenheit
    if @fahrenheit != nil
      @fahrenheit
    else
     @celsius * 9/5 + 32
    end
  end

  def to_celsius
    if @celsius != nil
      @celsius
    else
      (@fahrenheit - 32) * 5/9
    end
  end

  def self.in_fahrenheit(t)
    Temperature.new({:f => t})
  end

  def self.in_celsius(t)
    # @fahrenheit = t
    # @celsius = nil
    Temperature.new({:c => t})
  end


end

# t1 = Temperature.new({:f => 50})
# p t1.to_fahrenheit
#
# t2 = Temperature.new({:f => 32})
# p t2.to_celsius

# t3 = Temperature.in_celsius(50)
# p t3
