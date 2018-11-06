require "prct06/version"
  class Alimentos
    attr_reader :etiqueta, :grasas

    #constructor
    def initialize (etiqueta, grasas)
	@etiqueta = etiqueta
	@grasas = grasas
    end

end
