require "pry"
class Changer

  attr_accessor :number

  def initialize
    #binding.pry
    @@number = number
  end
  def self.make_change(number)
    @@number = number

    quaters = @@number / 25
    dimes = ( @@number % 25 ) / 10
    nickels = (( @@number % 25 ) % 10 ) / 5
    cents = ( (( @@number % 25 ) % 10 ) % 5) / 1

    quaters.times.map{25} + dimes.times.map {10} + nickels.times.map {5} + cents.times.map{1}
  end
end

p Changer.make_change(68)
