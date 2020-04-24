# coding: utf-8

require './bomba'

describe Bomba do
  let(:bomba) { Bomba.new(1000, 3.00) }
  
  it 'possui capacidade e preço por litro' do
    bomba.capacidade.should == 1000
    bomba.preco_por_litro.should == 3
  end
  
  it 'se enche' do
    expect { bomba.encher }.to change { bomba.quantidade }.from(0).to(1000)
  end
  
  it 'abastece por valor' do
    bomba.encher
    bomba.abastecer_por_valor(30).should == 10
    bomba.quantidade.should == 990
  end
  
  it 'abastece por litros' do
    bomba.encher
    bomba.abastecer_por_litros(30).should == 90
    bomba.quantidade.should == 970  
  end
  
  it 'permite alterar preço por litro' do
    bomba.preco_por_litro = 2
    bomba.preco_por_litro.should == 2
    bomba.encher
    bomba.abastecer_por_litros(30).should == 60
  end
  
  it 'não aceita preço zero nem negativo' do
    expect { Bomba.new(1000, 0) }.to raise_error
    expect { bomba.preco_por_litro = 0 }.to raise_error
    expect { Bomba.new(1000, -0.1) }.to raise_error
    expect { bomba.preco_por_litro = -0.1 }.to raise_error
  end
  
  it 'não aceita capacidade zero nem negativa' do
    expect { Bomba.new(0, 3) }.to raise_error
    expect { Bomba.new(-1, 3) }.to raise_error
  end
  
  it 'não aceita abastecimento sem combustível suficiente' do
    bomba.encher
    expect { bomba.abastecer_por_litros(1000.1) }.to raise_error
    expect { bomba.abastecer_por_valor(3000.10) }.to raise_error
  end
end
