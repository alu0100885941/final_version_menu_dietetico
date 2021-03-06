require "spec_helper.rb"
require "./lib/dieta/linked_list.rb"
require "./lib/dieta/menu.rb"
context 'Creando la clase a probar' do
        before:all do

                @lista = Linked_list.new()
		
        end

describe "Probando la creación de clase" do
	it "El inicio de la lista debe estar creado" do
		expect(@lista.inicio)
	end
	end
describe "Probando insert" do
	it "La inserción debe efectuarse correctamente" do
		@lista.insert(1)
		expect(@lista.inicio[:value]).to eq(1)
	end
end

describe "Probando extract" do
	it "La extracción debe ser correcta." do
		expect(@lista.extract).to eq(1)
	end
end

describe "Probando metodo  to_s" do
	it "El formateo de la lista debe ser correcto." do
		@lista.insert(4)
		@lista.insert(5)
		@lista.insert(6)
		@lista.insert(1)
		@lista.insert(2)
		@lista.insert(3)
		expect(@lista.to_s).to eq("Valor numero 1) Equivale a 3\nValor numero 2) Equivale a 2\nValor numero 3) Equivale a 1\nValor numero 4) Equivale a 6\nValor numero 5) Equivale a 5\nValor numero 6) Equivale a 4\n")
	end

	end		

describe "Probando lista de menús" do
	it "Operaciones necesarias con listas de menus" do
		@lista.extract
		@lista.extract
		@lista.extract
		@lista.extract
		@lista.extract
		@lista.extract
		dummy= Menu.new("Desayuno", [15, 20], [["Tostadas con aceite", "2 porciones", 80],["Café con leche", "1 taza", 100]], "150,75 KCal", [20,30,60])
		@lista.insert(dummy)

		expect(@lista.extract).to eq(dummy)
	
	end
	end

describe "Probando lista de menús" do
	it "Operación formateo correcta, comprobar." do
		                          		
		 
		dummy = Menu.new("Desayuno", [15, 20], [["Tostadas con aceite", "2 porciones", 80],["Café con leche", "1 taza", 100]], "150,75 KCal", [20,30,60])
		@lista.insert(dummy)
		expect(@lista.to_s).to eq("Valor numero 1) Equivale a #{dummy.to_s}\n")
	end
	end
end
