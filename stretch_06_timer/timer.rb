class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hour = (@seconds / 60) / 60
    minute = (@seconds / 60) % 60
    second = (@seconds % 60) % 60
    padded(hour) + ':' + padded(minute) + ':' + padded(second)
  end

  def padded(n)
    if n >= 10
      n.to_s
    else
      '0'+ n.to_s
    end
  end

end
