# coding: utf-8

require './complexo'

def complexo(r, i)
  NumeroComplexo.new(r, i)
end

describe NumeroComplexo do
  it 'possui partes real e imaginária' do
    c = complexo(2, 3)
    c.real.should == 2
    c.imaginaria.should == 3
  end
  
  it 'realiza adição' do
    complexo(-2, 3).somar(complexo(4, -2)).should == complexo(2, 1)
  end
  
  it 'realiza subtração' do
    complexo(-2, 3).subtrair(complexo(4, -2)).should == complexo(-6, 5)
  end
  
  it 'realiza multiplicação' do
    complexo(-2, 3).multiplicar(complexo(4, -2)).should == complexo(-2, 16)
  end
  
  it 'fornece representação em string' do
    complexo(-2, 3).to_s.should == '-2.0+3.0i'
  end
  
  it 'compara igualdade com outro número complexo' do
    complexo(-2, 3).should == complexo(-2, 3)
    complexo(-2, 3).should_not == complexo(3, -2)
  end
end
