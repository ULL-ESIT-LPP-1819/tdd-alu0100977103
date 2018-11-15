class Alimento
    attr_accessor :valor,:grasas,:sat,:hi,:su,:pro,:sal
    
    def initialize(valor,grasas,saturadas,hidratos,azucares,proteinas,sal,porciones,peso)
        @valor=valor
        @grasas=grasas
        @sat=saturadas
        @hi=hidratos
        @az=azucares
        @pro=proteinas
        @sal=sal
        if @porciones!= 0
            @porciones=porciones
            @peso=peso
        end
    end
    
    def valor
        @v1=@hi*17.0
        @v2=@pro*17.0
        @v3=@grasas*37.0
        @energia=@v1+@v2+@v3
    end
    
    def valorg
        @v1=@hi*4.0
        @v2=@pro*4.0
        @v3=@grasas*9.0
        @energiag=@v1+@v2+@v3
    end
    
    def ir
        if @porciones!="nil"
            @ir=@energia/100.0
        end
    end
    
end