class Valoracion<Alimento
   
    def initialize(valor,grasas,saturadas,hidratos,azucares,proteinas,sal,porciones,peso,nombre,v_consult,talla)
        super(valor,grasas,saturadas,hidratos,azucares,proteinas,sal,porciones,peso)
        @nombre=nombre
        @v_consult=v_consult
        @talla = talla
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
