class Linked_list 
	
	attr_reader :inicio
	Node = Struct.new(:value,:next)
	def initialize
		@inicio=Node.new(nil,nil)
	end			
	def insert(data)
			aux=Node.new(data,@inicio)
			@inicio=aux
	end
	def extract
		temp= @inicio[:value]
		@inicio=@inicio[:next]
		temp
	end
	def to_s
		temp = @inicio
		cont= 1
		string = "" 
		while(temp[:next]!=nil)
			string+="Valor numero #{cont}) Equivale a #{temp[:value]}\n"
			temp=temp[:next]
			cont+=1
		end

		string
	end

end	
