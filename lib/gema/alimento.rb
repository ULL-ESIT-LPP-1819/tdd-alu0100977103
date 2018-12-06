#Clase Individuo
class Alimento
    
    attr_accessor :peso,:talla,:tri,:bi,:su,:sup,:brazo,:cintura,:cadera
    include Comparable
    
    #Constructor 
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
    
    #Sirve para Comparar el peso de individuos
    def <=>(other)
        peso<=>other.itself.peso
    end
    
    #Sirve para mostrar los datos de un individuo
    def to_s
        "#{@peso},#{@talla},#{@tri},#{@bi},#{@su},#{@sup},#{@brazo},#{ @cintura},#{@cadera}"
    end

    #Calcula IMC
    def IMC
        @resultado = (@peso/(@talla*@talla))
    end
    
    #Calcula los pliegues cutaneos
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
    
    #Calcula la cirscunferencia de un indiivduo
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
    
    #Calcula la relacion_cc de un inidividuo
    def relacion_cc
        @c=self.circunferencia(1)
        @ci=self.circunferencia(0)
        @relacion=@ci/@c
    end
    
end