# coding: utf-8

require './quadrado'

describe Quadrado do
  before(:each) { @quadrado = Quadrado.new(5.0) }
  
  it 'possui um tamanho dos lados' do
    @quadrado.lado.should == 5.0
  end
  
  it 'permite alterar o tamanho dos lados' do
    @quadrado.lado = 5.1
    @quadrado.lado.should == 5.1
  end
  
  it 'calcula a sua área' do
    @quadrado.area.should == 25
  end
  
  it 'não aceita lado negativo nem zero' do
    expect { Quadrado.new(0) }.to raise_error
    expect { @quadrado.lado = 0 }.to raise_error
    expect { Quadrado.new(-0.1) }.to raise_error
    expect { @quadrado.lado = -0.1 }.to raise_error
  end
end
