require "./lib/dieta/dl_list.rb"
require "./lib/dieta/linked_list.rb"
require "./lib/dieta/menu_alimentos.rb"
require "./lib/dieta/menu_edades.rb"
require "spec_helper.rb"

context "Double linked list." do
	before:all do
		
		@dl_list = Dl_linked_list.new()	
	end
	describe "Contruir objeto" do
		it "Creando instacia de objeto Dl_list" do
			expect(@dl_list.inicio).to eq(nil)
			expect(@dl_list.tail).to eq(nil)
		
		end
	end
	describe "Insertar en la lista" do
		it "Lista con inserciones" do
			@dl_list.insert_inicio(1)
			expect(@dl_list.extract_inicio()).to eq(1)

	end
	end
	describe "Comprobando doble sentido" do	
		it "Sentidos dobles necesarios" do
			@dl_list.insert_inicio(1)
			@dl_list.insert_inicio(2)
			@dl_list.insert_inicio(3)
			expect(@dl_list.inicio[:next]).to eq(@dl_list.tail[:prev])
		end
	end

	describe "Comprobando integridad de la lista. Lista multi-menu." do
		it "Los menu deben ser del tipo de menu_edades y menu_alimentos" do
			@dl_list2 = Dl_linked_list.new()
			m_e = Menu_edades.new("15-25","Desayuno", [15, 20], [["Tostadas con aceite", "2 porciones", 80],["Café con leche", "1 taza", 100]], "150,75 KCal", [20,30,60])
			m_a = Menu_alimentos.new("Panes y cereales","Desayuno", [15, 20], [["Tostadas con aceite", "2 porciones", 80],["Café con leche", "1 taza", 100]], "150,75 KCal", [20,30,60])
			@dl_list2.insert_inicio(m_e)
			@dl_list2.insert_inicio(m_a)
			expect(@dl_list2.inicio[:value]).to eq(m_a)
			expect(@dl_list2.tail[:value]).to eq(m_e)
			expect((@dl_list2.extract_inicio).to_s).to eq(m_a.to_s)

		end
	end
end
