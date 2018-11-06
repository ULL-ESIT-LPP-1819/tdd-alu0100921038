require 'spec_helper'
require './lib/alimentos.rb'
 
describe alimentos do
  before :each do
	@prueba = alimentos.new("Croquetas")
  end
  describe "# Debe existir un nombre para la etiqueta" do
    it "Existe el nombre del alimento" do
	expect(@prueba.nombre.is_a?(String)).to eq(true)
    end
  end

end
