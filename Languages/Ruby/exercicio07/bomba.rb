class Bomba
  def initialize(cap, ppl)
    self.capacidade = cap
    self.preco_por_litro = ppl
    @quantidade = 0
  end
  
  attr_reader :capacidade, :preco_por_litro, :quantidade
  
  def encher
    @quantidade = capacidade
  end
  
  def abastecer_por_valor(valor)
    litros = valor / preco_por_litro
    verificar_capacidade(litros)
    @quantidade -= litros
    litros
  end
  
  def abastecer_por_litros(litros)
    verificar_capacidade(litros)
    @quantidade -= litros
    litros * preco_por_litro
  end
  
  def preco_por_litro=(ppl)
    validar_positivo(ppl)
    @preco_por_litro = ppl
  end
  
  private
  
  def capacidade=(cap)
    validar_positivo(cap)
    @capacidade = cap
  end
  
  def verificar_capacidade(litros)
    raise if capacidade < litros
  end
  
  def validar_positivo(medida)
    raise unless medida > 0 
  end
end
