class Fixnum
  def mdc(outro)
    menor = self < outro ? self : outro
    menor.downto(1) do |divisor|
      return divisor if self % divisor == 0 && outro % divisor == 0
    end
		1
  end
  
  def mmc(outro)
    mmc_candidato = self > outro ? self : outro;
		incremento = mmc_candidato
		while !(mmc_candidato % self == 0 && mmc_candidato % outro == 0)
			mmc_candidato += incremento
		end
		mmc_candidato
  end
end
