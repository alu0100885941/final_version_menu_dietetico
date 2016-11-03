require "dieta/version"

module Dieta
  class Menu
  	
	attr_reader :titulo, :porcentaje, :platos, :vct, :porcentaje_pgh
	def initialize(titulo, porcentaje, platos, vct, porcentaje_pgh)
		@titulo, @porcentaje, @platos, @vct, @porcentaje_pgh= titulo, porcentaje, platos, vct, porcentaje_pgh
	end

	def get_titulo()
		@titulo
	end
	
	def get_platos(i,j)
		@platos[i][j]
	end

	def get_ingesta()
		@porcentaje
	end

  end
end
