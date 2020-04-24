# coding: utf-8

require './retangulo'

describe Retangulo do
  before(:each) { @retangulo = Retangulo.new(4, 3) }
  
  it 'possui largura e altura' do
    @retangulo.largura.should == 4
    @retangulo.altura.should == 3
  end
  
  it 'permite alterar largura e altura' do
    @retangulo.largura = 10
    @retangulo.largura.should == 10
    @retangulo.altura = 20
    @retangulo.altura.should == 20
  end
  
  it 'calcula sua área' do
    @retangulo.area.should == 12
  end
  
  it 'calcula seu perímetro' do
    @retangulo.perimetro.should == 14
  end
  
  it 'não aceita largura zero nem negativa' do
    expect { Retangulo.new(0, 3) }.to raise_error
    expect { @retangulo.largura = 0 }.to raise_error
    expect { Retangulo.new(-0.1, 3) }.to raise_error
    expect { @retangulo.largura = -0.1 }.to raise_error
  end
  
  it 'não aceita altura zero nem negativa' do
    expect { Retangulo.new(3, 0) }.to raise_error
    expect { @retangulo.altura = 0 }.to raise_error
    expect { Retangulo.new(3, -0.1) }.to raise_error
    expect { @retangulo.altura = -0.1 }.to raise_error
  end
end
