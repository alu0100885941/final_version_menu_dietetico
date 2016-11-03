require "spec_helper"
require "./lib/dieta.rb"

context 'Creando la clase a probar' do
        before:each do

                @desayuno = Dieta::Menu.new("Desayuno", [15, 20], [["Tostadas con aceite", "2 porciones", 80],["Café con leche", "1 taza", 100]], "150,75 KCal", [20,30,60])

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

describe "Prueba 3: Descripción de platos." do
                it "El plato debe tener una descripción." do
                        expect(@desayuno.platos[0][0]).to eq("Tostadas con aceite")
                end
end


describe "Prueba 4: Porciones adecuadas." do
                it "Las porciones adecuadas son." do
                        expect(@desayuno.platos[0][1]).to eq("2 porciones")

                end
        end


describe "Prueba 5: Ingesta en gramos" do
                it "La Ingesta debe ser definida" do
                        expect(@desayuno.platos[0][2]).to eq(80)
                end
        end

describe "Prueba 6: Conjunto de platos requerido." do
                it "El conjunto de platos debe existir." do
                        expect(@desayuno.platos[1][0]).to eq("Café con leche")
                        expect(@desayuno.platos[1][1]).to eq("1 taza")
                        expect(@desayuno.platos[1][2]).to eq(100)
                end
        end

describe "Prueba 7: Calorías totales de la ingesta deben ser especificadas." do
		it "La ingesta debe indicar su peso calorífico." do
			expect(@desayuno.vct).to eq("150,75 KCal")
		end
	end
describe "Prueba 8: Porcentajes de grasas, hidratos de carbono y proteinas de un conjunto de platos." do
		it "Debe existir un porcentaje de proteinas, grasa e hidratos de carbono en ese orden para cada conjunto de platos." do
			expect(@desayuno.porcentaje_pgh[0]).to eq(20)
			expect(@desayuno.porcentaje_pgh[1]).to eq(30)
			expect(@desayuno.porcentaje_pgh[2]).to eq(60)
		end
	end


end

