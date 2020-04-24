require './bola'

describe Bola do
  it 'possui uma cor' do
    bola = Bola.new('verde')
    bola.cor.should == 'verde'
  end
  
  it 'permite alterar sua cor' do
    bola = Bola.new('verde')
    bola.cor = 'vermelha'
    bola.cor.should == 'vermelha'
  end
end
