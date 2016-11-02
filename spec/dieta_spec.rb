require "spec_helper"
require "./lib/dieta.rb"

context 'Creando la clase a probar' do
	before:each do
	
		@desayuno = Dieta::Menu.new("Desayuno", [15, 20])
		
	end

describe 'Prueba 1: Titulo.' do
		it 'Tiene que haber un titulo' do
			expect(@desayuno.titulo).to eq("Desayuno")
		end
end

describe 'Prueba 2: Porcentajes.' do
		it 'Debe existir un rango de porcentajes en cada ingesta de la dieta' do
			expect(@desayuno.porcentaje).to eq([15, 20]);
end
end	

