class Retangulo
  def initialize(largura, altura)
    validar largura, altura
    @largura, @altura = largura, altura
  end
  
  def area
    largura * altura
  end
  
  def perimetro
    largura * 2 + altura * 2
  end
  
  attr_reader :largura, :altura
  
  def largura=(nova_largura)
    validar nova_largura, altura
    @largura = nova_largura
  end
  
  def altura=(nova_altura)
    validar largura, nova_altura
    @altura = nova_altura
  end
  
  private
  
  def validar(largura, altura)
    raise unless largura > 0 && altura > 0
  end
end
