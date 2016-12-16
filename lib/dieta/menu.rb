class Menu

        attr_reader :titulo, :porcentaje, :platos, :vct, :porcentaje_pgh
        def initialize(titulo="", porcentaje=[], platos=[], vct="", porcentaje_pgh=[], &block)
                @titulo, @porcentaje, @platos, @vct, @porcentaje_pgh= titulo, porcentaje, platos, vct, porcentaje_pgh
        	if(block_given?)
			instance_eval(&block)
		end
	end

	def titulo(options)
		@titulo << options[:titulo]
	end
	def porcentaje(options)
		@porcentaje << options[:menor]
		@porcentaje << options[:mayor]
	end
	def platos(options)
		plato=[]
		plato << options[:a1]
		plato << options[:a2]
		plato << options[:a3]
		@platos << plato
        end
	def vct(options)
		@vct << options[:vct]
	end
	def porcentaje_pgh(options)
		@porcentaje_pgh << options[:p]
		@porcentaje_pgh << options[:g]
		@porcentaje_pgh << options[:h]
	end
        def to_s()
		x=""
                x = "#{@titulo}"
                x << " (#{@porcentaje[0]} - #{@porcentaje[1]}%)\n"
                i=0
                while (i<@platos.length())
                        x << "- #{@platos[i][0]}, #{@platos[i][1]}, #{@platos[i][2]} g\n"
                i+=1
                end
                x << "V.C.T. | %   #{@vct} | #{@porcentaje_pgh[0]}% - #{@porcentaje_pgh[1]}% - #{@porcentaje_pgh[2]}%\n"
        x
        end
end
