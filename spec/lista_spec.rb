require 'spec_helper'
require './lib/Alimentos'
require './lib/listaEnlazada'
require './lib/Datos'

describe Lista do
  
  before :all do
     
      #@l = Lista.new("Primer punto")
      #@l.push_back("Segundo punto");
      #@l.push_back("Tercer punto");
      #@l.push_back("Cuarto punto");
      #@l.push_back("Quinto punto");
      #@l.push_back("Sexto punto");
      #@l.push_back("Septimo punto");

      #@l2 = Lista.new(Alimentos.new("Croquetas", 10,5,4,3,3,3))
      #@l2.push_back(Alimentos.new("Pescado", 6,4,7,2,2,2))
      #@l2.push_back(Alimentos.new("Yogurt", 7, 5,10, 8,1,1))
      #@l2.push_back(Alimentos.new("Ensalada", 6, 1,1, 8,2,1))
      #@l2.push_back(Alimentos.new("Patatas", 6, 3,7, 8,3,1))

      #@l3 = Lista.new(Datos.new(65, 1.82, 24, 0))
      #@l3.push_back(Datos.new(100, 1.70, 22, 1))
      #@l3.push_back(Datos.new(45, 1.60, 17, 1))
      #@l3.push_back(Datos.new(120, 1.82, 19, 0))
      #@l3.push_back(Datos.new(80, 1.50, 19, 0))
      #@l3.push_back(Datos.new(90, 1.70, 27, 0))
     

      @alimento1 = Alimentos.new("Alimento 1", 10, 20, 30, 40, 50, 10) 
      @alimento2 = Alimentos.new("Alimento 2", 20, 10, 10, 20, 30, 20)  
      @alimento3 = Alimentos.new("Alimento 3", 10, 2, 2, 10, 20, 5) 
      @alimento4 = Alimentos.new("Alimento 4", 1, 30, 20, 10, 40, 15)
      @alimento5 = Alimentos.new("Alimento 5", 3, 2, 3, 5, 5, 1)
      @alimento6 = Alimentos.new("Alimento 6", 10, 8, 5, 3, 30, 10) 
      @alimento7 = Alimentos.new("Alimento 7", 20, 10, 15, 10, 50, 30) 
      @alimento8 = Alimentos.new("Alimento 8", 10, 3, 10, 6, 20, 3) 
      @alimento9 = Alimentos.new("Alimento 9", 10, 5, 5, 2, 15, 2)  
      @alimento10 = Alimentos.new("Alimento 10", 20, 10, 20, 15, 40, 10) 
      @alimento11 = Alimentos.new("Alimento 11", 5, 2, 3, 1, 20, 5) 
      @alimento12 = Alimentos.new("Alimento 12", 8, 5, 3, 2, 10, 3)     

      @lista_alimentos = Lista.new(@alimento1)
      @lista_alimentos.push_back(@alimento2)
      @lista_alimentos.push_back(@alimento3)
      @lista_alimentos.push_back(@alimento4)
      @lista_alimentos.push_back(@alimento5)

      @paciente1 = Datos.new(95, 1.83, 25, 1, "moderada")
      @paciente2 = Datos.new(60, 1.60, 25, 0, "ligera")
      @paciente3 = Datos.new(89, 1.80, 21, 1, "intensa")
      @paciente4= Datos.new(70, 1.70, 30, 0, "moderada")
      @paciente5 = Datos.new(110, 1.80, 41, 1, "ligera")
      @listaPaciente = Lista.new(@paciente1)
      @listaPaciente.push_back(@paciente2)
      @listaPaciente.push_back(@paciente3)
      @listaPaciente.push_back(@paciente4)
      @listaPaciente.push_back(@paciente5)

      #Array de menus y pacientes
      
      @arrayMenu1 = [@alimento1, @alimento2, @alimento3, @alimento5, @alimento6, @alimento8, @alimento9]
      @arrayMenu2 = [@alimento1, @alimento2, @alimento4, @alimento6, @alimento7, @alimento8, @alimento10, @alimento11]
      @arrayMenu3 = [@alimento1, @alimento2, @alimento3, @alimento4, @alimento5, @alimento6, @alimento7, @alimento8, @alimento9, @alimento10, @alimento11, @alimento12]
      @arrayMenu4 = [@alimento2, @alimento3, @alimento4, @alimento5, @alimento7, @alimento8, @alimento9, @alimento12]
      @arrayMenu5 = [@alimento1, @alimento3, @alimento7, @alimento8, @alimento9, @alimento10, @alimento11, @alimento12]
      @arrayPacientes = [@paciente1, @paciente2, @paciente3, @paciente4, @paciente5]

  end
=begin
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
).to eq([193.0, 146.0, 190.0, 113.0, 159.0])
	end

	it "Método select" do
		expect(@l2.select {|nodo| nodo.etiqueta == "Yogurt"}).to eq("lalala")
        end

	it "Método max y min" do
		expect(@l2.max {|nodo1, nodo2| nodo1.valor_energetico <=> nodo2.valor_energetico}).to eq("lalala")
	end

	it "Método sort" do
		expect(@l2.sort).to eq(@l2.to_s)
	end
    end

    describe "Probamos a enumerar listas de Datos" do
    	it "Método collect" do
		expect(@l3.collect {|nodo| nodo.imc}).to eq([31.14186851211073]) 
	end
	it "Método select" do
		expect(@l3.select {|nodo| nodo.peso == "65"}).to eq("lerelele")
        end
    end
=end

    describe "Pruebas nuevo metodos" do
    	it "Calculo del gasto energetico total del paciente 1" do
      		expect(@paciente1.gastoEnergeticoTotal()).to eq(2704.04)
    	end
    	it "Calculo del gasto energetico total del paciente 2" do
      		expect(@paciente2.gastoEnergeticoTotal()).to eq(1603.08)
    	end
    	it "Calculo del gasto energetico total del paciente 3" do
      		expect(@paciente3.gastoEnergeticoTotal()).to eq(3140.6)
    	end
    	it "Calculo del gasto energetico total del paciente 4" do
      		expect(@paciente4.gastoEnergeticoTotal()).to eq(1988.56)
    	end
    	it "Calculo del gasto energetico total del paciente 5" do
      		expect(@paciente5.gastoEnergeticoTotal()).to eq(2470.5)
    	end
     end

     describe "Pruebas calculo aporte energetico de los menus" do
     	it "Aporte energetico menu 1" do
      		expect((@arrayMenu1.collect { |alimento| alimento.valor_energetico}).reduce(:+)).to eq(2697)
        end
    	it "Aporte energetico menu 2" do
      		expect((@arrayMenu2.collect { |alimento| alimento.valor_energetico}).reduce(:+)).to eq(4311)
    	end
    	it "Aporte energetico menu 3" do
      		expect((@arrayMenu3.collect { |alimento| alimento.valor_energetico}).reduce(:+)).to eq(5110)
    	end
    	it "Aporte energetico menu 4" do
      		expect((@arrayMenu4.collect { |alimento| alimento.valor_energetico}).reduce(:+)).to eq(3107)
    	end
    	it "Aporte energetico menu 5" do
      		expect((@arrayMenu5.collect { |alimento| alimento.valor_energetico}).reduce(:+)).to eq(3354)
    	end
     end

    describe "Pruebas comparacion aporte menus con el gastos de los pacientes" do
    it "Prueba Menu 1 - true en caso de que el menu sea adecuado" do
      arrayGastos = @arrayPacientes.collect { |paciente| paciente.gastoEnergeticoTotal }
      aporteMenu1 = (@arrayMenu1.collect { |alimento| alimento.valor_energetico}).reduce(:+)
      porcentajeMenu1 = aporteMenu1 * 0.1
      arrayCorrespondencia = arrayGastos.collect { |gastoEnergetico| gastoEnergetico.between?(aporteMenu1 - porcentajeMenu1, aporteMenu1 + porcentajeMenu1)}
      expect(@arrayPacientes.zip(arrayCorrespondencia)).to eq([[@paciente1, false], [@paciente2, true], [@paciente3, false], [@paciente4, false], [@paciente5, false]])
    end
    it "Prueba Menu 2 - true en caso de que el menu sea adecuado" do
      arrayGastos = @arrayPacientes.collect { |paciente| paciente.gastoEnergeticoTotal }
      aporteMenu2 = (@arrayMenu2.collect { |alimento| alimento.valor_energetico}).reduce(:+)
      porcentajeMenu2 = aporteMenu2 * 0.1
      arrayCorrespondencia = arrayGastos.collect { |gastoEnergetico| gastoEnergetico.between?(aporteMenu2 - porcentajeMenu2, aporteMenu2 + porcentajeMenu2)}
      expect(@arrayPacientes.zip(arrayCorrespondencia)).to eq([[@paciente1, false], [@paciente2, false], [@paciente3, false], [@paciente4, false], [@paciente5, true]])
    end
    it "Prueba Menu 3 - true en caso de que el menu sea adecuado" do
      arrayGastos = @arrayPacientes.collect { |paciente| paciente.gastoEnergeticoTotal }
      aporteMenu3 = (@arrayMenu3.collect { |alimento| alimento.valor_energetico}).reduce(:+)
      porcentajeMenu3 = aporteMenu3 * 0.1
      arrayCorrespondencia = arrayGastos.collect { |gastoEnergetico| gastoEnergetico.between?(aporteMenu3 - porcentajeMenu3, aporteMenu3 + porcentajeMenu3)}
      expect(@arrayPacientes.zip(arrayCorrespondencia)).to eq([[@paciente1, true], [@paciente2, false], [@paciente3, true], [@paciente4, false], [@paciente5, false]])
    end
    it "Prueba Menu 4 - true en caso de que el menu sea adecuado" do
      arrayGastos = @arrayPacientes.collect { |paciente| paciente.gastoEnergeticoTotal }
      aporteMenu4 = (@arrayMenu4.collect { |alimento| alimento.valor_energetico}).reduce(:+)
      porcentajeMenu4 = aporteMenu4 * 0.1
      arrayCorrespondencia = arrayGastos.collect { |gastoEnergetico| gastoEnergetico.between?(aporteMenu4 - porcentajeMenu4, aporteMenu4 + porcentajeMenu4)}
      expect(@arrayPacientes.zip(arrayCorrespondencia)).to eq([[@paciente1, false], [@paciente2, true], [@paciente3, false], [@paciente4, false], [@paciente5, false]])
    end
    it "Prueba Menu 5 - true en caso de que el menu sea adecuado" do
      arrayGastos = @arrayPacientes.collect { |paciente| paciente.gastoEnergeticoTotal }
      aporteMenu5 = (@arrayMenu5.collect { |alimento| alimento.valor_energetico}).reduce(:+)
      porcentajeMenu5 = aporteMenu5 * 0.1
      arrayCorrespondencia = arrayGastos.collect { |gastoEnergetico| gastoEnergetico.between?(aporteMenu5 - porcentajeMenu5, aporteMenu5 + porcentajeMenu5)}
      expect(@arrayPacientes.zip(arrayCorrespondencia)).to eq([[@paciente1, false], [@paciente2, false], [@paciente3, false], [@paciente4, true], [@paciente5, false]])
    end
  end
end







