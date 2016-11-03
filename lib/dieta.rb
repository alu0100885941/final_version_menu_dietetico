require "dieta/version"

module Dieta
  class Menu
  	
	attr_reader :titulo, :porcentaje, :platos
	def initialize(titulo, porcentaje, platos)
		@titulo, @porcentaje, @platos= titulo, porcentaje, platos
	end

  end
end
