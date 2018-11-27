require "prct06/version"
  class Alimentos
    include Comparable

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


    def to_s()
		x=""
		x << "#{@etiqueta} \n"
		x << "Grasas (g): #{@grasas} \n"
		x << "Grasas saturadas (g): #{@grasas_sat} \n"
		x << "Hidratos (g): #{@hidratos} \n"
		x << "Azucares (g): #{@azucares} \n"
		x << "Proteinas (g): #{@proteinas} \n"
		x << "Sal (g): #{@sal} \n"
    end	

    def <=> (another)
	valor_energetico <=> another.valor_energetico
    end
end

class PocoSalado < Alimentos
	def initialize (etiqueta, grasas, grasas_sat, hidratos, azucares, proteinas, sal)
        	super(etiqueta, grasas, grasas_sat, hidratos, azucares, proteinas, sal)
        end

end 

class Salado < Alimentos
	 def initialize (etiqueta, grasas, grasas_sat, hidratos, azucares, proteinas, sal)
                super(etiqueta, grasas, grasas_sat, hidratos, azucares, proteinas, sal)
         end
 

end
