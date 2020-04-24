# coding: utf-8

require './tv'

describe TV do
  let(:tv) { TV.new }

  it 'liga e desliga' do
    tv.ligar
    tv.should be_ligada
    tv.desligar
    tv.should_not be_ligada
  end
  
  it 'troca de canal' do
    tv.trocar_canal(2)
    tv.canal.should == 2
  end
  
  it 'só permite a troca de canal dentro de uma faixa' do
    tv.trocar_canal(TV::PRIMEIRO_CANAL)
    tv.trocar_canal(TV::ULTIMO_CANAL)
    expect { tv.trocar_canal(TV::PRIMEIRO_CANAL - 1) }.to raise_error
    expect { tv.trocar_canal(TV::ULTIMO_CANAL + 1) }.to raise_error
  end
  
  it 'aumenta e diminui o volume' do
    tv.volume.should == 0
    tv.aumentar_volume
    tv.volume.should == 1
    tv.diminuir_volume
    tv.volume.should == 0
  end
  
  it 'volume so pode ser alterado dentro de uma faixa' do
    tv.volume.should == 0
    expect { tv.diminuir_volume }.to_not change { tv.volume }
    
    30.times { tv.aumentar_volume }
    tv.volume.should == 30
    expect { tv.aumentar_volume }.to_not change { tv.volume }
  end
end
