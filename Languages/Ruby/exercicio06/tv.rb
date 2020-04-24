class TV
  def initialize
    @volume = 0
  end

  def ligar
    @ligada = true
  end
  
  def desligar
    @ligada = false
  end
  
  def ligada?
    @ligada
  end
  
  PRIMEIRO_CANAL = 1
  ULTIMO_CANAL = 60
  
  attr_reader :canal, :volume
  
  def trocar_canal(canal)
    raise unless (PRIMEIRO_CANAL..ULTIMO_CANAL).cover?(canal)
    @canal = canal
  end
  
  def aumentar_volume
    @volume += 1 if volume < 30
  end
  
  def diminuir_volume
    @volume -= 1 if volume > 0
  end
end
