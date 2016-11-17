require "./lib/dieta/dl_list.rb"
require "./lib/dieta/linked_list.rb"
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
			@dl_list.insert(1)
			expect(@dl_list.extract()).to eq(1)

	end
	end
end
