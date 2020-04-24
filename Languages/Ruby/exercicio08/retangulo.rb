require './ponto'

class Retangulo
  def initialize(altura, largura, centro)
    @altura, @largura, @centro = altura, largura, centro
  end
  
  attr_reader :altura, :largura
  attr_accessor :centro
  
  def vertices
    x_desl = largura / 2
    y_desl = altura / 2
    [Ponto.new(centro.x - x_desl, centro.y - y_desl), 
     Ponto.new(centro.x + x_desl, centro.y - y_desl),
     Ponto.new(centro.x - x_desl, centro.y + y_desl), 
     Ponto.new(centro.x + x_desl, centro.y + y_desl)] 
  end
end
