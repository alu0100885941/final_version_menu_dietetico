require "./lib/dieta/menu.rb" 
require "./lib/dieta/dl_list.rb"
require "spec_helper.rb"
   context "Menu de alimentos." do
           before:all do
           @desayuno = Menu.new("Desayuno", [15, 20], [["Tostadas con aceite", "2 porciones", 80],["Café con leche", "1 taza", 100]], "150,75 KCal", [20,30,60])
           
	   @desayuno_2 = Menu.new() do
		titulo :titulo => "Desayuno"
		porcentaje :menor => 15, :mayor => 20
		platos :a1 => "Tostadas con aceite", :a2 => "2 porciones", :a3 => 80
		platos :a1 => "Café con leche", :a2 => "1 taza", :a3 => 100
		vct :vct => "150,75 KCal"
		porcentaje_pgh :p => 20, :g => 30, :h => 60
		end		
		
	   end
           describe "Probando DSL" do
                  it "Domain Specific Language: menu debe crearse correctamente." do                  
			expect(@desayuno.to_s).to eq(@desayuno_2.to_s) 
		end
           end

  end

   context "Menu diario." do
	before:all do

	        @cena = Menu.new() do
                 titulo :titulo => "Comida"
                 porcentaje :menor => 30, :mayor => 40
                 platos :a1 => "Spaghettis con tomate", :a2 => "3 porciones", :a3 => 180
                 platos :a1 => "Batido de frutas", :a2 => "1 vaso", :a3 => 10
                 vct :vct => "350,90 KCal"
                 porcentaje_pgh :p => 100, :g => 50, :h => 90
         end
	@lista_listas = Dl_linked_list.new() do
		elemento :data => (Dl_linked_list.new() do
			elemento :data => (Menu.new() do
				titulo :titulo => "Comida"
				porcentaje :menor => 30, :mayor => 40
				platos :a1 => "Spaghettis con tomate", :a2 => "3 porciones", :a3 => 180
				platos :a1 => "Batido de frutas", :a2 => "1 vaso", :a3 => 10
				vct :vct => "350,90 KCal"
				porcentaje_pgh :p => 100, :g => 50, :h => 90
			end)
		end)
	end
		
	
	@lista_m3 = Dl_linked_list.new() do
		elemento :data => Menu.new() do 
			titulo :titulo => "Comida"
			porcentaje :menor => 30, :mayor => 40
			platos :a1 => "Spaghettis con tomate", :a2 => "3 porciones", :a3 => 180
			vct :vct => "350,90 KCal"
			porcentaje_pgh :p => 25, :g => 30, :h => 60
		end
		
	end	
	end

	describe "Probando DSL" do
		it "Domain Specific Language: Lista de menu." do
		expect(@lista_listas.to_s).to eq("Valor numero 1) Equivale a Valor numero 1) Equivale a "+@cena.to_s+"\n\n")
		expect(@lista_m3.tail[:value].class).to eq(Menu)
		expect(@lista_listas.tail[:value].is_a?Dl_linked_list).to eq(true)
		expect(@lista_listas.tail[:value].tail[:value].is_a?Menu).to eq(true)

	end
	end

end

  
