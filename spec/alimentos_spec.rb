require 'spec_helper'
require './lib/Alimentos.rb'
require './lib/Datos.rb'
require './lib/listaEnlazada'

describe Alimentos do
  before :each do
	@prueba = Alimentos.new("Croquetas",10,5,4,3,3,3)
  end

  describe "Probamos el módulo comparable" do
	menor = Alimentos.new("Yogurt",8,4,3,2,2,1)
	igual = Alimentos.new("Croquetas",10,5,4,3,3,3)
	mayor = Alimentos.new("Patatas",12,10,8,6,5,5)

	it "Debe ser mayor" do
	  expect(@prueba > mayor). to eq(false)
	  expect(@prueba > menor). to eq(true)
	end

	it "Debe ser menor" do
	  expect(mayor < @prueba).to eq(false)
	  expect(menor < @prueba).to eq(true)
	end

	it "Debe ser igual" do
	  expect(igual == @prueba).to eq(true)
	  expect(mayor == @prueba).to eq(false)
	end
  end
#  describe "# Debe existir un nombre para la etiqueta" do
#    it "Existe el nombre del alimento" do
#	expect(@prueba.etiqueta.is_a?(String)).to eq(true)
#    end
#  end
#
#  describe "#Debe existir la cantidad de grasas" do
#    it "Existe la cantidad de grasas en gramos" do
# 	expect(@prueba.grasas.is_a?(Numeric)).to eq(true)
#     end
#   end
# 
#   describe "#Debe existir la cantidad de grasas saturadas" do
#     it "Existe la cantidad de grasas saturadas" do
# 	expect(@prueba.grasas_sat.is_a?(Numeric)).to eq(true)
#     end
#   end
# 
#   describe "#Debe existir la cantidad de hidratos de carbono" do
#     it "Existe la cantidad de hidratos de carbono" do 
# 	expect(@prueba.hidratos.is_a?(Numeric)).to eq(true)
#     end
#   end
# 
# 
#   describe "#Debe existir la cantidad de azucares" do
#     it "Existe la cantidad de azucares" do
# 	expect(@prueba.azucares.is_a?(Numeric)).to eq(true)
#     end
#   end
# 
#   describe "#Debe existir la cantidad de proteínas" do
#     it "Existe la cantidad de proteínas" do
# 	expect(@prueba.proteinas.is_a?(Numeric)).to eq(true)
#     end
#   end
# 
#   describe "#Debe existir la cantidad de sal" do
#     it "Existe la cantidad de sal" do
# 	expect(@prueba.sal.is_a?(Numeric)).to eq(true) 
#     end
#   end
# 
#   describe "#Debe existir un método para obtener el nombre del alimento" do
#     it "Existe un método para obtener el nombre del alimento" do
# 	expect(@prueba.etiqueta).to eq("Croquetas")
#     end
#   end
# 
#   describe "#Debe existir un método para obtener el valor energético" do
#     it "Existe un método para obtener el valor energético" do
# 	expect(@prueba.valor_energetico).to eq(193)
#     end 
#   end
# 
#   describe "#Debe existir un método para obtener la cantidad de grasas" do
#     it "Existe un método para obtener la cantidad de grasas" do
#         expect(@prueba.grasas).to eq(10)
#     end
#   end
# 
#    describe "#Debe existir un método para obtener la cantidad de grasas saturadas" do
#     it "Existe un método para obtener la cantidad de grasas saturadas" do
#         expect(@prueba.grasas_sat).to eq(5)
#     end
#   end
# 
#    describe "#Debe existir un método para obtener la cantidad de hidratos" do
#     it "Existe un método para obtener la cantidad de hidratos" do
#         expect(@prueba.hidratos).to eq(4)
#     end
#   end
# 
#    describe "#Debe existir un método para obtener la cantidad de azucares" do
#     it "Existe un método para obtener la cantidad de azucares" do
#         expect(@prueba.azucares).to eq(3)
#     end 
#   end
# 
#    describe "#Debe existir un método para obtener la cantidad de proteias" do
#     it "Existe un método para obtener la cantidad de proteinas" do
#         expect(@prueba.proteinas).to eq(3)
#     end
#   end
# 
#     describe "#Debe existir un método para obtener la cantidad de sal" do
#     it "Existe un método para obtener la cantidad de sal" do
#         expect(@prueba.sal).to eq(3)
#     end
#   end
# 
#     describe "# Etiqueta formateada" do 
#     it "El menú está formateado" do
#       expect(@prueba.to_s). to eq("Croquetas \nGrasas (g): 10 \nGrasas saturadas (g): 5 \nHidratos (g): 4 \nAzucares (g): 3 \nProteinas (g): 3 \nSal (g): 3 \n")
#     end
#   end
# 
 end

describe Datos do
  before :each do
       @prueba = BajoPeso.new("Si","No", 65,170,24,0)
       @prueba2 = Datos.new(65,180,24,0)
  end
  
  describe "Probamos el módulo comparable" do
	mayor2 = Datos.new(100,160,26,0)
	menor2 = Datos.new(40,160,23,1)
	igual2 = Datos.new(65,180,24,0)

        it "Debe ser mayor" do
          expect(@prueba2 > mayor2).to eq(false)
          expect(@prueba2 > menor2).to eq(false)
        end

        it "Debe ser menor" do
          expect(mayor2 < @prueba2).to eq(false)
          expect(menor2 < @prueba2).to eq(false)
        end

        it "Debe ser igual" do
          expect(igual2 == @prueba2).to eq(true)
          expect(mayor2 == @prueba2).to eq(true)
        end
 end

  describe "Comprobamos la jerarqia" do
    it "Es hija de Datos" do
      expect(@prueba.is_a?Datos).to eq(true)
    end
    it "Es hija de Object" do
      expect(@prueba.is_a?Object).to eq(true)
    end
    it"Es una instancia de BajoPeso" do
      expect(@prueba.instance_of?BajoPeso).to eq(true)
    end
  end  
    
  describe "Comprobamos los métodos" do
    it "Debe responder a los metodos" do
        expect(@prueba.respond_to?:imc).to eq(true)
        expect(@prueba.respond_to?:rcc).to eq(true)
    end
  end

    
end

