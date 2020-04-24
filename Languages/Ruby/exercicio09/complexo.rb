class NumeroComplexo
  def initialize(real, imaginaria)
    @real, @imaginaria = real, imaginaria
  end
  
  attr_reader :real, :imaginaria
  
  def somar(outro)
    NumeroComplexo.new(real + outro.real, imaginaria + outro.imaginaria)
  end
  
  def subtrair(outro)
    NumeroComplexo.new(real - outro.real, imaginaria - outro.imaginaria)
  end
  
  def multiplicar(outro)
    NumeroComplexo.new( 
      real * outro.real - imaginaria * outro.imaginaria,
      imaginaria * outro.real + real * outro.imaginaria)
  end
  
  def to_s
    '%.1f+%.1fi' % [real, imaginaria]
  end
  
  def ==(outro)
    real == outro.real && imaginaria == outro.imaginaria
  end
end
