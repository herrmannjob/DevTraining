# coding: utf-8

require './racional'

def racional(numerador, denominador)
  NumeroRacional.new(numerador, denominador)
end

describe NumeroRacional do
  it 'possui numerador e denominador' do
    r = racional(3, 5)
    r.numerador.should == 3
    r.denominador.should == 5
  end
  
  it 'fica sempre na forma simplificada' do
    r = racional(4, 6)
    r.numerador.should == 2
    r.denominador.should == 3
  end
  
  it 'realiza adição' do
    (racional(1, 3) + racional(2, 5)).should == racional(11, 15)
  end
  
  it 'realiza subtração' do
    (racional(1, 3) - racional(2, 5)).should == racional(-1, 15)
  end
  
  it 'realiza multiplicação' do
    (racional(1, 3) * racional(2, 5)).should == racional(2, 15)
  end
  
  it 'realiza divisão' do
    (racional(1, 3) / racional(2, 5)).should == racional(5, 6)
  end
  
  it 'fornece representação em string' do
    racional(7, 3).to_s.should == '7/3'
  end
  
  it 'fornece representação em ponto flutuante' do
    r = racional(1, 8)
    r.como_ponto_flutuante(1).should == '0.1'
    r.como_ponto_flutuante(2).should == '0.12'
    r.como_ponto_flutuante(3).should == '0.125'
  end
end
