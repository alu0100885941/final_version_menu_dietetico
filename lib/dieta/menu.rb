class Menu

        attr_reader :titulo, :porcentaje, :platos, :vct, :porcentaje_pgh
        def initialize(titulo, porcentaje, platos, vct, porcentaje_pgh)
                @titulo, @porcentaje, @platos, @vct, @porcentaje_pgh= titulo, porcentaje, platos, vct, porcentaje_pgh
        end

        def get_titulo()
                @titulo
        end

        def get_platos(i,j)
                @platos[i][j]
        end

        def get_ingesta()
                @porcentaje
        end

        def get_vct()
                @vct
        end

        def get_pgh()
                @porcentaje_pgh
        end

        def to_s()

                x = @titulo
                x << " (#{@porcentaje[0]} - #{@porcentaje[1]}%)\n"
                i=0
                while (i<platos.length())
                        x << "- #{@platos[i][0]}, #{@platos[i][1]}, #{@platos[i][2]} g\n"
                i+=1
                end
                x << "V.C.T. | %   #{@vct} | #{@porcentaje_pgh[0]}% - #{@porcentaje_pgh[1]}% - #{@porcentaje_pgh[2]}%\n"
        x
        end
end
