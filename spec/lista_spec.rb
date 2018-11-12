require 'spec_helper'
require './lib/Alimentos'
require './lib/listaEnlazada'

describe Lista do
  
  before :all do
      @l = Lista.new("Primer punto")
      @l.push_back("Segundo punto");
      @l.push_back("Tercer punto");
      @l.push_back("Cuarto punto");
      @l.push_back("Quinto punto");
      @l.push_back("Sexto punto");
      @l.push_back("Septimo punto");
  end
  
   describe "Debe tener los datos correctos" do
    it "Debe tener cabeza" do
      expect(@l.head).to_not eq(nil) 
    end
   end

end
