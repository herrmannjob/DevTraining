class Ponto
  def initialize(x, y)
    @x, @y = x, y
  end
  
  attr_reader :x, :y
  
  def ==(outro)
    x == outro.x && y == outro.y
  end
end
