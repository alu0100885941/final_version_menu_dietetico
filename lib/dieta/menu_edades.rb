require "./lib/dieta/menu.rb"


class Menu_edades < Menu
attr_reader :edad
def initialize(edad, titulo, porcentaje, platos, vct, porcentaje_pgh)
	super(titulo, porcentaje, platos, vct, porcentaje_pgh) 
	@edad=edad
end
def to_s
	aux="Edad: #{@edad}\n"
	aux+= super()
end
end
