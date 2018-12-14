require "prct06/version"
class Datos
	include Comparable

        attr_reader :peso, :talla, :edad, :sexo, :nivelActividad

        def initialize(peso, talla, edad, sexo, nivelActividad)
                @peso, @talla, @edad, @sexo, @nivelActividad = peso, talla, edad, sexo, nivelActividad
        end

        def imc
                res = 0.0
                res = peso / (talla * talla)
                res
        end

        def rcc (imc)
                res = 0.0
                res = 1.2 * imc + 0.23*self.edad - 10.8*self.sexo - 5.4
                res
        end

        def to_s
                return "peso\t-> #{@peso}\n\ttalla\t-> #{@talla}\n\tedad \t-> #{@edad}\n\tsexo\t-> #{@sexo}\n"
        end

	def <=> (another)
		imc <=> another.imc
	end

        # Calculo del peso teorico ideal
        # @return [Numeric] Peso teorico ideal
        def pesoTeoricoIdeal ()
        	(self.talla * 100 - 150) * 0.75 + 50
    	end
    
   	# Calculo del gasto energetico basal
    	# @return [Numeric] Gasto energetico basal
    	def gastoEnergeticoBasal ()
        	if (self.sexo == 0)
            		(10 * self.peso) + (6.25 * self.talla  * 100) - (5 * self.edad) - 161
        	elsif (self..sexo == 1)
            		(10 * self.peso) + (6.25 * self.talla  * 100) - (5 * self.edad) + 5
        	end
    	end
    
    	# Calculo del efecto termogeno
    	# @return [Numeric] Efecto termogeno
    	def efectoTermogeno ()
        	self.gastoEnergeticoBasal() * 0.10
    	end
    
    	# Calculo del gasto energetico segun actividad fisica
    	# @return [Numeric] Gasto energetico segun actividad fisica
    	def gastoActividadFisica ()
        	case self.nivelActividad
            		when "reposo" then self.gastoEnergeticoBasal() * 0.0
            		when "ligera" then self.gastoEnergeticoBasal() * 0.12
            		when "moderada" then self.gastoEnergeticoBasal() * 0.27
           		when "intensa" then self.gastoEnergeticoBasal() * 0.54
        	end
    	end
    
    	# Calculo del gasto energetico total
    	# @return [Numeric] Gasto energetico total
    	def gastoEnergeticoTotal()
        	(self.gastoEnergeticoBasal() + self.efectoTermogeno() + self.gastoActividadFisica()).round(2)
    	end
end

class BajoPeso < Datos

	attr_reader :paciente, :tratamiento

	def initialize (paciente, tratamiento, peso, talla, edad, sexo)
		super(peso, talla, edad, sexo)
		@paciente = paciente
		@tratamiento = tratamiento
	end
end

class Adecuado < Datos

        attr_reader :paciente, :tratamiento

        def initialize (paciente, tratamiento, peso, talla, edad, sexo)
                super(peso, talla, edad, sexo)
                @paciente = paciente
                @tratamiento = tratamiento
        end
end

class Sobrepeso < Datos

        attr_reader :paciente, :tratamiento

        def initialize (paciente, tratamiento, peso, talla, edad, sexo)
                super(peso, talla, edad, sexo)
                @paciente = paciente
                @tratamiento = tratamiento
        end
end


