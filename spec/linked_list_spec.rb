require "spec_helper.rb"
require "./lib/linked_list.rb"

context 'Creando la clase a probar' do
        before:each do

                @lista = Linked_list.new()

        end
end

describe "Prueba de creación de la clase" do
		it "Clase debe estar creada" do
			expect(Linked_list.new()).not_to eq(nil)
		end
	end
