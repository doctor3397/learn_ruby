def reverser
  string = yield
  string.reverse!.split(' ').reverse!.join(' ')
end


def adder(n=1)
  num = yield
  num += n
end

def repeater(t = 1)
  t.times do
    yield
  end
end
