class Conta
  def initialize(nome_correntista, numero)
    @nome_correntista, @numero = nome_correntista, numero
    @saldo = 0
  end
  
  attr_reader :saldo, :nome_correntista, :numero
  
  def depositar(valor)
    @saldo += valor
  end
  
  def sacar(valor)
    raise if @saldo - valor < 0
    @saldo -= valor
  end
end
