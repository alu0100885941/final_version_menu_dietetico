require "dieta/version"

module Dieta
  class Menu
  	
	attr_reader :titulo, :porcentaje, :platos, :vct
	def initialize(titulo, porcentaje, platos, vct)
		@titulo, @porcentaje, @platos, @vct= titulo, porcentaje, platos,vct
	end

  end
end
