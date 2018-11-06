require "prct06/version"
  class Alimentos
    attr_reader :etiqueta, :grasas, :grasas_sat, :hidratos, :azucares, :proteinas, :sal

    #constructor
    def initialize (etiqueta, grasas, grasas_sat, hidratos, azucares, proteinas, sal)
	@etiqueta = etiqueta
	@grasas = grasas
	@grasas_sat = grasas_sat
	@hidratos = hidratos
	@azucares = azucares
	@proteinas = proteinas
	@sal = sal
    end

    def valor_energetico
	res = 0.0
	res += (@grasas)*9 + (@grasas_sat)*9 + (@hidratos)*4 + (@azucares)*4 + (@proteinas)*4 + (@sal)*6
	res
    end

end
