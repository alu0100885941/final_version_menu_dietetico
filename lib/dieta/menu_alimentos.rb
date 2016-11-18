require "./lib/dieta/menu.rb"


class
 Menu_alimentos < Menu
  attr_reader :alimentos
   def initialize(alimentos, titulo, porcentaje, platos, vct, porcentaje_pgh)  
       super(titulo, porcentaje, platos, vct, porcentaje_pgh)   
       @alimentos=alimentos 
end
 def to_s 
        aux="Grupo de alimentos: #{@alimentos}\n"
         aux+= super() 
 end 
end
