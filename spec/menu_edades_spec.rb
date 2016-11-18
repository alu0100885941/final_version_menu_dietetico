require "./lib/dieta/menu_edades.rb"
require "spec_helper.rb"

context "Menu de edades." do        
	 before:all do 

	 @desayuno = Menu_edades.new("15-25","Desayuno", [15, 20], [["Tostadas con aceite", "2 porciones", 80],["Café con leche", "1 taza", 100]], "150,75 KCal", [20,30,60])
	 end
	 
	describe "Probando herencia" do
		it "Herencia debe ser correcta. Es un menu." do
			expect(@desayuno.is_a?Menu).to eq(true)
			expect(@desayuno.is_a?Menu_edades).to eq(true)
			expect(@desayuno.is_a?Object).to eq(true)
		end
		it "Pruebas de metodos e instancia." do
			expect(@desayuno.instance_of?Menu).to eq(false)
			expect(@desayuno.instance_of?Menu_edades).to eq(true)
			expect(@desayuno.respond_to?('to_s')).to eq(true)
		end
		it "Pruebas de clases y jerarquias" do
			expect(@desayuno.class).to eq(Menu_edades)
			expect(Menu_edades.superclass).to eq(Menu)
			expect(Menu.superclass).to eq(Object)
		end
		
	end

end

