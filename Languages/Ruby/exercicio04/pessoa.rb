class Pessoa
  def initialize(idade, peso, altura)
    @idade, @peso, @altura = idade, peso, altura
  end
  
  def fazer_aniversario
    @idade += 1
    @altura += 0.015 if @idade < 21
  end
  
  def emagrecer
    @peso -= 1
  end
  
  def engordar
    @peso += 1
  end
  
  attr_reader :idade, :peso, :altura
end
