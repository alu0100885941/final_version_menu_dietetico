class Dl_linked_list 
	
	attr_reader :inicio, :tail
	Node = Struct.new(:value,:next,:prev)
	def initialize(&block)
			@inicio= nil
			@tail= nil
	if(block_given?)
		instance_eval(&block)
	end		
	end	
	def elemento(options)
		insert_inicio(options[:data])
	end		
	def insert_final(data)
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
	def insert_inicio(data)
			if(@inicio==nil && @tail==nil)
				aux=Node.new(data,nil,nil)
				@inicio=aux
				@tail = @inicio
			else
				aux=Node.new(data,nil,@inicio)
				@inicio[:prev]=aux
				@inicio=aux
			end
	end
				
	def extract_inicio
		if(@inicio!=nil)
		temp= @inicio[:value]
		@inicio=@inicio[:next]
		@inicio[:prev]=nil
		temp
		end
	end
	def extract_final
		if(@inicio!=nil)
		temp=@tail[:value]
		@tail=@tail[:prev]
		@tail[:next]=nil
		end
	end
	def to_s
		temp = @inicio
		cont= 1
		string = "" 
		while(temp!=nil)
			string+="Valor numero #{cont}) Equivale a #{temp[:value]}\n"
			temp=temp[:next]
			cont+=1
		end

		string
	end

end	
