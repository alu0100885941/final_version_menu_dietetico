require "spec_helper"
require "./lib/dieta.rb"

context 'Creando la clase a probar' do
	before:each do
	
		@desayuno = Dieta::Menu.new("Desayuno")
	end

describe 'Prueba 1: Titulo.' do
		it 'Tiene que haber un titulo' do
			expect(@desayuno.titulo).to eq("Desayuno")
		end
end
end	

