require 'spec_helper'
require './lib/Alimentos.rb'
 
describe Alimentos do
  before :each do
	@prueba = Alimentos.new("Croquetas")
  end
  describe "# Debe existir un nombre para la etiqueta" do
    it "Existe el nombre del alimento" do
	expect(@prueba.etiqueta.is_a?(String)).to eq(true)
    end
  end

end
