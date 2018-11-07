require 'spec_helper'
require './lib/Alimentos.rb'
 
describe Alimentos do
  before :each do
	@prueba = Alimentos.new("Croquetas",10,5,4,3,3,3)
  end
  describe "# Debe existir un nombre para la etiqueta" do
    it "Existe el nombre del alimento" do
	expect(@prueba.etiqueta.is_a?(String)).to eq(true)
    end
  end

  describe "#Debe existir la cantidad de grasas" do
    it "Existe la cantidad de grasas en gramos" do
	expect(@prueba.grasas.is_a?(Numeric)).to eq(true)
    end
  end

  describe "#Debe existir la cantidad de grasas saturadas" do
    it "Existe la cantidad de grasas saturadas" do
	expect(@prueba.grasas_sat.is_a?(Numeric)).to eq(true)
    end
  end

  describe "#Debe existir la cantidad de hidratos de carbono" do
    it "Existe la cantidad de hidratos de carbono" do 
	expect(@prueba.hidratos.is_a?(Numeric)).to eq(true)
    end
  end


  describe "#Debe existir la cantidad de azucares" do
    it "Existe la cantidad de azucares" do
	expect(@prueba.azucares.is_a?(Numeric)).to eq(true)
    end
  end

  describe "#Debe existir la cantidad de proteínas" do
    it "Existe la cantidad de proteínas" do
	expect(@prueba.proteinas.is_a?(Numeric)).to eq(true)
    end
  end

  describe "#Debe existir la cantidad de sal" do
    it "Existe la cantidad de sal" do
	expect(@prueba.sal.is_a?(Numeric)).to eq(true) 
    end
  end

  describe "#Debe existir un método para obtener el nombre del alimento" do
    it "Existe un método para obtener el nombre del alimento" do
	expect(@prueba.etiqueta).to eq("Croquetas")
    end
  end

  describe "#Debe existir un método para obtener el valor energético" do
    it "Existe un método para obtener el valor energético" do
	expect(@prueba.valor_energetico).to eq(193)
    end 
  end

  describe "#Debe existir un método para obtener la cantidad de grasas" do
    it "Existe un método para obtener la cantidad de grasas" do
        expect(@prueba.grasas).to eq(10)
    end
  end

   describe "#Debe existir un método para obtener la cantidad de grasas saturadas" do
    it "Existe un método para obtener la cantidad de grasas saturadas" do
        expect(@prueba.grasas_sat).to eq(5)
    end
  end

   describe "#Debe existir un método para obtener la cantidad de hidratos" do
    it "Existe un método para obtener la cantidad de hidratos" do
        expect(@prueba.hidratos).to eq(4)
    end
  end

   describe "#Debe existir un método para obtener la cantidad de azucares" do
    it "Existe un método para obtener la cantidad de azucares" do
        expect(@prueba.azucares).to eq(3)
    end 
  end

   describe "#Debe existir un método para obtener la cantidad de proteias" do
    it "Existe un método para obtener la cantidad de proteinas" do
        expect(@prueba.proteinas).to eq(3)
    end
  end

    describe "#Debe existir un método para obtener la cantidad de sal" do
    it "Existe un método para obtener la cantidad de sal" do
        expect(@prueba.sal).to eq(3)
    end
  end

    describe "# Etiqueta formateada" do end
    it "El menú está formateado" do
      expect(@prueba.to_s). to eq(""Croquetas 193kcal \n,Grasas (g): 10 \n,Grasas saturadas (g): 5 \n,Hidratos (g): 4 \n, Azucares (g): 3 \n, Proteinas (g): 3 \n, Sal (g): 3 \n")
    end
  end
