require "prct06/version"
class Datos
	include Comparable

        attr_reader :peso, :talla, :edad, :sexo

        def initialize(peso, talla, edad, sexo)
                @peso, @talla, @edad, @sexo = peso, talla, edad, sexo
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


