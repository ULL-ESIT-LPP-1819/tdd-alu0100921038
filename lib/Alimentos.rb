require "prct06/version"
  class Alimentos
    attr_reader :etiqueta, :grasas, :grasas_sat

    #constructor
    def initialize (etiqueta, grasas, grasas_sat)
	@etiqueta = etiqueta
	@grasas = grasas
	@grasas_sat = grasas_sat
    end

end
