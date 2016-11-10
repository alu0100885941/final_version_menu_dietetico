class Linked_list 
	
	attr_reader :inicio
	Node = Struct.new(:value,:next)
	def initialize
		@inicio=Node.new(nil,nil)
	end			
	def insert(data)
		if(inicio==nil)
			inicio=Node.new(data,nil)
		else
			aux=Node.new(data,@inicio)
			@inicio=aux
		end
	end
	def dato_inicio
		@inicio[:value]
	end
end	
