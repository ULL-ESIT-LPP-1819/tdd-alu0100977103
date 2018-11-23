class Valoracion<Alimento
    def initialize(valor,grasas,saturadas,hidratos,azucares,proteinas,sal,porciones,peso,nombre,v_consult)
        super(valor,grasas,saturadas,hidratos,azucares,proteinas,sal,porciones,peso)
        @nombre=nombre
        @v_consult=v_consult
    end
end
