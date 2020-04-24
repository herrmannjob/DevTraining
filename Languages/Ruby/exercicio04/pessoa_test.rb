# coding: utf-8

require './pessoa'

describe Pessoa do
  before(:each) { @pessoa = Pessoa.new(22, 70, 1.70) }
  
  it 'possui idade, peso e altura' do
    @pessoa.idade.should == 22
    @pessoa.peso.should == 70
    @pessoa.altura.should == 1.70
  end
  
  it 'envelhece' do
    @pessoa.fazer_aniversario
    @pessoa.idade.should == 23
  end
  
  it 'engorda' do
    @pessoa.engordar
    @pessoa.peso.should == 71
  end
  
  it 'emagrece' do
    @pessoa.emagrecer
    @pessoa.peso.should == 69
  end
  
  context 'se menor de 21' do
    before(:each) { @pessoa = Pessoa.new(18, 70, 1.70) }
    
    it 'cresce ao envelhecer' do
      @pessoa.fazer_aniversario
      @pessoa.idade.should == 19
      @pessoa.altura.should be_within(0.0001).of(1.715)
      
      @pessoa.fazer_aniversario
      @pessoa.idade.should == 20
      @pessoa.altura.should be_within(0.0001).of(1.73)
      
      @pessoa.fazer_aniversario
      @pessoa.idade.should == 21
      @pessoa.altura.should be_within(0.0001).of(1.73)
    end
  end
end
