require './array_sum'

class Integer
  def prime?
    !(2..(self/2)).find {|n| self % n == 0 }
  end
  
  def perfect?
    self == (1..(self/2)).select {|n| self % n == 0 }.sum
  end
  
  def happy?(anteriores = [])
    return true if self == 1
    return false if anteriores.include?(self)
    total = self.to_s.chars.map {|part| part.to_i ** 2 }.sum
    total.happy?(anteriores << self)
  end
end
