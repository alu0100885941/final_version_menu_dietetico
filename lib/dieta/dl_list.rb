class Dl_linked_list 
	
	attr_reader :inicio, :tail
	Node = Struct.new(:value,:next,:prev)
	def initialize
			@inicio= nil
			@tail= nil		
	end			
	def insert(data)
			if(@inicio==nil && @tail==nil)
				aux=Node.new(data,nil,nil)
				@inicio= aux
				@tail = @inicio
			else
			aux=Node.new(data,nil,@tail)
			@tail[:next]=aux
			@tail=aux

			end
	end
	def extract
		temp= @inicio[:value]
		@inicio=@inicio[:next]
		@inicio[:prev]=nil
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
