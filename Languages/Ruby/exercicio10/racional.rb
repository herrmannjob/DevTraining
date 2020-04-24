require './algebra'

class NumeroRacional
  def initialize(numerador, denominador)
    @numerador, @denominador = numerador, denominador
    simplificar
  end
  
  attr_reader :numerador, :denominador
  
  def +(outro)
    mmc = denominador.mmc(outro.denominador)
    NumeroRacional.new(mmc / denominador * numerador + mmc / outro.denominador * outro.numerador, mmc)
  end
  
  def -(outro)
    self + outro.aditiva_inversa
  end
  
  def *(outro)
    NumeroRacional.new(numerador * outro.numerador, denominador * outro.denominador)
  end
  
  def /(outro)
    self * outro.multiplicativa_inversa
  end
  
  def to_s
    '%d/%d' % [numerador, denominador]
  end
  
  def como_ponto_flutuante(casas)
    "%.#{casas}f" % valor
  end
  
  def ==(outro)
    numerador == outro.numerador && denominador == outro.denominador
  end
  
  private
  
  def valor
    numerador.to_f / denominador
  end
  
  def simplificar
    mdc = numerador.mdc(denominador)
    @numerador /= mdc
    @denominador /= mdc
  end
  
  protected
  
  def aditiva_inversa
    NumeroRacional.new(-numerador, denominador)
  end
  
  def multiplicativa_inversa
    NumeroRacional.new(denominador, numerador)
  end
end
