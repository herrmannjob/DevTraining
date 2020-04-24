# coding: utf-8

require './ponto'

describe Ponto do
  let(:ponto) { Ponto.new(1, 2) }

  it 'possui x e y' do
    ponto.x.should == 1
    ponto.y.should == 2
  end
  
  it 'compara igualdade com outro ponto' do
    ponto.should == Ponto.new(1, 2)
    ponto.should_not == Ponto.new(2, 1)
  end
end
