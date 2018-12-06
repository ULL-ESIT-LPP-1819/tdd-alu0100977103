class Paciente<Alimento
    
    include Comparable
    
    attr_accessor :nombre,:v_consult
    
    def initialize(peso,talla,tricipital,bicipital,subescapular,suprailiaco,brazo,cintura,cadera,nombre,v_consult)
        super(peso,talla,tricipital,bicipital,subescapular,suprailiaco,brazo,cintura,cadera)
        @nombre=nombre
        @v_consult=v_consult
    end
    
    def <=>(other)
        @peso<=>other.peso
    end
    
    def to_s
        "#{@peso},#{@talla},#{@tri},#{@bi},#{@su},#{@sup},#{@brazo},#{ @cintura},#{@cadera},#{@nombre},#{@v_consult}"
    end
    
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