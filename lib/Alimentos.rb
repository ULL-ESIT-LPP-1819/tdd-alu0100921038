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

end
