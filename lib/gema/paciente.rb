class Paciente<Alimento
    
    include Comparable
    
    attr_accessor :nombre,:v_consult,:sexo, :edad, :factor
    
    #Constructor de Paciente
    def initialize(peso,talla,tricipital,bicipital,subescapular,suprailiaco,brazo,cintura,cadera,nombre,v_consult,sexo,edad,factor)
        super(peso,talla,tricipital,bicipital,subescapular,suprailiaco,brazo,cintura,cadera)
        @nombre=nombre
        @v_consult=v_consult
        @sexo=sexo
        @edad=edad
        @factor=factor
    end
    
    def gasto_energetico
        if (sexo==1)
            result= (10*@peso) +(6.25*@talla) - (5*@edad) - 161
        else
            result=(10*@peso) + (6.25*@talla) - (5*@edad) + 5
        end
        return result
    end
    
    def efecto_ternogeno
        result = self.gasto_energetico * 0.1
    end
    
    def gasto_actividad
        result=self.gasto_energetico * @factor
    end
    
    def gasto_total
        result=self.gasto_energetico+self.efecto_ternogeno+self.gasto_actividad
    end
    
    #Comparable de peso de un Paciente
    def <=>(other)
        @peso<=>other.peso
    end

    #Mostrar datos de Paciente
    def to_s
        "#{@peso},#{@talla},#{@tri},#{@bi},#{@su},#{@sup},#{@brazo},#{ @cintura},#{@cadera},#{@nombre},#{@v_consult},#{@sexo},#{@edad},#{@factor}"
    end
    
    #Calcular IMC
    def IMC
        @talla_t=@talla*@talla
        @obesidad=@peso/@talla_t
        @tratamiento=0
        if @obesidad >=30
            @tratamiento=1
        else
            @tratamiento=0
        end
    end
    
end