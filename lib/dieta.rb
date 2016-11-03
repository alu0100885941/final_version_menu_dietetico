require "dieta/version"

module Dieta
  class Menu
  	
	attr_reader :titulo, :porcentaje, :platos, :vct, :porcentaje_pgh
	def initialize(titulo, porcentaje, platos, vct, porcentaje_pgh)
		@titulo, @porcentaje, @platos, @vct, @porcentaje_pgh= titulo, porcentaje, platos, vct, porcentaje_pgh
	end

  end
end
