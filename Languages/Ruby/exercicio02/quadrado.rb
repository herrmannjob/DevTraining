class Quadrado
  def initialize(lado)
    validar lado
    @lado = lado
  end
  
  def area
    lado * lado
  end
  
  attr_reader :lado
  
  def lado=(novo_lado)
    validar novo_lado
    @lado = novo_lado
  end
  
  private
  
  def validar(lado)
    raise if lado <= 0
  end
end
