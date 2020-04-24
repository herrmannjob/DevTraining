# coding: utf-8

require './conta'

describe Conta do
  before(:each) { @conta = Conta.new('Linus', '12345') }
  
  it 'possui nome do correntista e número' do
    @conta.nome_correntista.should == 'Linus'
    @conta.numero.should == '12345'
  end
  
  it 'possui saldo inicial zero' do
    @conta.saldo.should == 0
  end
  
  it 'permite realizar depósitos' do
    @conta.depositar(110)
    @conta.saldo.should == 110
    @conta.depositar(10.5)
    @conta.saldo.should == 120.5
  end
  
  it 'permite realizar saques' do
    @conta.depositar(100)
    @conta.sacar(75)
    @conta.saldo.should == 25
    @conta.sacar(10.5)
    @conta.saldo.should == 14.5
  end
  
  it 'permite sacar até zerar o saldo' do
    @conta.depositar(100)
    @conta.sacar(75)
    @conta.sacar(25)
    @conta.saldo.should == 0
  end
  
  it 'dispara exceção para saque maior que saldo' do
    @conta.depositar(100)
    expect { @conta.sacar(100.01) }.should raise_error
  end
end
