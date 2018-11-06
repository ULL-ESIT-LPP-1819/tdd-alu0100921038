require "prct06/version"
  class Alimentos
    attr_reader :etiqueta, :grasas, :grasas_sat, :hidratos

    #constructor
    def initialize (etiqueta, grasas, grasas_sat, hidratos)
	@etiqueta = etiqueta
	@grasas = grasas
	@grasas_sat = grasas_sat
	@hidratos = hidratos
    end

end
