# coding: utf-8

require './retangulo'

describe Retangulo do
  it 'possui largura, altura e centro' do
    centro = Ponto.new(10, 8)
    retangulo = Retangulo.new(3, 4, centro)
    retangulo.altura.should == 3
    retangulo.largura.should == 4
    retangulo.centro.should == centro
  end
  
  it 'calcula seus vértices' do
    retangulo = Retangulo.new(4, 2, Ponto.new(10, 8))
    retangulo.vertices.should == [
      	Ponto.new(9, 6), Ponto.new(11, 6),
				Ponto.new(9, 10), Ponto.new(11, 10)]
  end
  
  it 'permite alterar centro' do
    retangulo = Retangulo.new(4, 2, Ponto.new(10, 8))
		retangulo.centro = Ponto.new(5, 5)
		retangulo.vertices.should == [
				Ponto.new(4, 3), Ponto.new(6, 3),
				Ponto.new(4, 7), Ponto.new(6, 7)]
  end
end
