require "dieta/version"

module Dieta
  class Menu
  	
	attr_reader :titulo, :porcentaje
	def initialize(titulo, porcentaje)
		@titulo, @porcentaje = titulo, porcentaje
	end

  end
end
