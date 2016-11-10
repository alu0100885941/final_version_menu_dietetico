require "spec_helper.rb"
require "./lib/linked_list.rb"

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
		

end
