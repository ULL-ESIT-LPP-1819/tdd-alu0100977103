class Alimento
    attr_accessor :peso,:talla,:tri,:bi,:su,:sup,:brazo,:cintura,:cadera
    def initialize(peso,talla,tricipital,bicipital,subescapular,suprailiaco,brazo,cintura,cadera)
        @peso=peso
        @talla=talla
        @tri=tricipital
        @bi=bicipital
        @su=subescapular
        @sup=suprailiaco
        @brazo=brazo
        @cintura=cintura
        @cadera=cadera
    end
    
    def to_s
        "#{@peso},#{@talla},#{@tri},#{@bi},#{@su},#{@sup},#{@brazo},#{ @cintura},#{@cadera}"
    end
    
    def IMC
        @resultado = (@peso/(@talla*@talla))
    end
    
    def plieges_cutaneos(value)
        if value==0
            vector=@tri
        elsif value==1
            vector=@bi
        elsif value==2
            vector=@su
        else
            vector=@sup
        end
        
        @suma=0
        i=0
        while i !=vector.length
            @suma=@suma+vector[i]
            i=i+1
        end
        @suma=@suma/3.0
    end
    
    def circunferencia(value)
        if value==0
            vector=@cintura
        else
            vector=@cadera
        end
        
        @suma=0
        i=0
        while i !=vector.length
            @suma=@suma+vector[i]
            i=i+1
        end
        @suma=@suma/2.0
    end
    
    def relacion_cc
        @c=self.circunferencia(1)
        @ci=self.circunferencia(0)
        @relacion=@ci/@c
    end
    
end