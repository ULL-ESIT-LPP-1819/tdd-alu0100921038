require 'spec_helper'
require './lib/Alimentos'
require './lib/listaEnlazada'
require './lib/Datos'

describe Lista do
  
  before :all do
      @l = Lista.new("Primer punto")
      @l.push_back("Segundo punto");
      @l.push_back("Tercer punto");
      @l.push_back("Cuarto punto");
      @l.push_back("Quinto punto");
      @l.push_back("Sexto punto");
      @l.push_back("Septimo punto");

      @l2 = Lista.new(Alimentos.new("Croquetas", 10,5,4,3,3,3))
      @l2.push_back(Alimentos.new("Pescado", 6,4,7,2,2,2))
      @l2.push_back(Alimentos.new("Yogurt", 6, 3,1, 8,1,1))
      @l2.push_back(Alimentos.new("Ensalada", 6, 3,1, 8,1,1))
      @l2.push_back(Alimentos.new("Patatas", 6, 3,1, 8,1,1))

      @l3 = Lista.new(Datos.new(65, 1.82, 24, 0))
      @l3.push_back(Datos.new(100, 1.70, 22, 1))
      @l3.push_back(Datos.new(45, 1.60, 17, 1))
      @l3.push_back(Datos.new(120, 1.82, 19, 0))
      @l3.push_back(Datos.new(80, 1.50, 19, 0))
      @l3.push_back(Datos.new(90, 1.70, 27, 0))

  end
  
   describe "Clasificación de los individuos" do
    it "Se puede clasificar a los individuos" do
       expect(@l3.pop_front.imc).to be > 18 
       expect(@l3.pop_front.imc).to be > 18
       expect(@l3.pop_front.imc).to be < 18
       expect(@l3.pop_front.imc).to be > 35   
       expect(@l3.pop_front.imc).to be > 35
       
    end
   end

   describe "Debe tener los datos correctos" do
    it "Debe tener cabeza" do
      expect(@l.head).to_not eq(nil) 
    end
   it "Debe tener cola" do
      expect(@l.tail).to_not eq(nil) 
    end
    it "Los nodos deben tener datos" do
      expect(@l.head.datos).to_not eq(nil) 
    end
    it "Los nodos deben tener anterior" do
      expect(@l.tail.prev).to_not eq(nil) 
    end
    it "Los nodos deben tener siguiente" do
      expect(@l.head.sig).to_not eq(nil) 
    end
  end
  
  describe "Se debe poder trabajar con la lista" do
    it "Se puede acceder al primero" do
        expect(@l.front()).to eq("Primer punto")
    end
    it "Se puede acceder al ultimo" do
        expect(@l.back()).to eq("Septimo punto")
    end
    it "Se puede añadir elementos al final" do
        @l.push_back("Octavo punto")
        expect(@l.back()).to eq("Octavo punto")
    end
    it "Se puede añadir elementos al principio" do
        @l.push_front("Primerisimo punto")
        expect(@l.front()).to eq("Primerisimo punto")
    end
    it "Se puede acceder a un elemento i" do
        expect(@l.element(3)).to eq("Tercer punto")
        expect(@l.element(0)).to eq("Primerisimo punto")
        expect(@l.element(8)).to eq("Octavo punto")
        expect(@l.element(5)).to eq("Quinto punto")
    end
    it "Se puede añadir un elemento en la posición i" do
        @l.set_element("Segundo y medio punto", 3)
        expect(@l.element(2)).to eq("Segundo punto")
        expect(@l.element(3)).to eq("Segundo y medio punto")
        expect(@l.element(4)).to eq("Tercer punto")
    end
    it "Se puede eliminar el primer elemento" do
        expect(@l.pop_front()).to eq("Primerisimo punto")
        expect(@l.front).to eq("Primer punto")
    end
    it "Se puede eliminar el ultimo elemento" do
        expect(@l.pop_back()).to eq("Octavo punto")
        expect(@l.back()).to eq("Septimo punto")
    end
    it "Se puede eliminar el elemento i" do
        expect(@l.pop_element(2)).to eq("Segundo y medio punto")
        expect(@l.element(2)).to eq("Tercer punto")
        expect(@l.element(1)).to eq("Segundo punto")
    end
    
    it "Tiene salida de texto" do
        expect(@l.to_s).to eq("{\nPrimer punto\nSegundo punto\nTercer punto\nCuarto punto\nQuinto punto\nSexto punto\nSeptimo punto\n}")
    end
  
  end

  describe "Comprobamos los métodos" do
    it "Debe responder a los metodos de lista" do
        expect(@l2.respond_to?:front).to eq(true)
        expect(@l2.respond_to?:back).to eq(true)
        expect(@l2.respond_to?:push_front).to eq(true)
        expect(@l2.respond_to?:push_back).to eq(true)
        expect(@l2.respond_to?:element).to eq(true)
        expect(@l2.respond_to?:set_element).to eq(true)
        expect(@l2.respond_to?:pop_element).to eq(true)
    end
  end
    

    describe "Probamos el modulo Enumerable" do
    it "Definimos el each" do
      cadena = ""
      @l.each do |nodo|
        cadena += "Chocolate " + nodo +"\n"
      end
      expect(cadena).to eq("Chocolate Primer punto\nChocolate Segundo punto\nChocolate Tercer punto\nChocolate Cuarto punto\nChocolate Quinto punto\nChocolate Sexto punto\nChocolate Septimo punto\n")
    end
    
    end

    describe "Probamos a enumerar listas de etiquetas" do
	it "Método collect" do
		expect(@l2.collect {|nodo| nodo.valor_energetico}
).to eq([193.0, 146.0, 127.0, 127.0, 127.0])
	end

	it "Método select" do
		#expect(@l2.select {|nodo| nodo.etiqueta == "Yogurt"}).to eq("lalala")
        end

	it "Método max y min" do
		#expect(@l2.max {|nodo1, nodo2| nodo1.valor_energetico <=> nodo2.valor_energetico}).to eq("lalala")
	end
    end
end






