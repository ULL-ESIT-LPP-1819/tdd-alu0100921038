require 'spec_helper'
require './lib/Alimentos.rb'
 
describe Alimentos do
  before :each do
	@prueba = Alimentos.new("Croquetas", 10, 5)
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

end