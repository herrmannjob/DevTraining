# coding: utf-8

require './algebra'

describe Integer do
  it 'calcula o máximo divisor comum em relação a outro inteiro' do
    15.mdc(10).should == 5
    35.mdc(63).should == 7
    11.mdc(88).should == 11
  end
  
  it 'calcula o mínimo múltiplo comum em relação a outro inteiro' do
    25.mmc(10).should == 50
    20.mmc(8).should == 40
    2.mmc(3).should == 6
  end
end
