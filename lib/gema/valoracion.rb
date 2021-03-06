#Clase de etiquetas utricionales
class Valoracion #Etiquetas
    
    include Comparable
   
   attr_accessor :valor_energetico,:cnt_grasas,:cnt_grasas_sat,:hidratos_carb,:azucares,:prot,:sal,:porciones,:tam_porciones
   
   #Contructor de una etiqueta
    def initialize(valor_energetico,cnt_grasas,cnt_grasas_sat,hidratos_carb,azucares,prot,sal,porcinones,tam_porciones)
        @valor_energetico=valor_energetico
        @cnt_grasas=cnt_grasas
        @cnt_grasas_sat=cnt_grasas_sat
        @hidratos_carb=hidratos_carb
        @azucares=azucares
        @prot=prot
        @sal=sal
        @porciones=porciones
        @tam_porciones=tam_porciones
    end

    def + (other)
        valor_energe_kcal + other.valor_energe_kcal
    end
    
    #Mostrar datos de una etiqueta
    def to_s
        "#{@valor_energetico},#{@cnt_grasas},#{@cnt_grasas_sat},#{@hidratos_carb},#{@azucares},#{@prot},#{@sal},#{@porciones},#{@tam_porciones}"
    end 
    
    #Para realizar comparable de sal
    def <=>(other)
        sal<=>other.sal
    end
    
    #Calcula el valor energetico en kj
    def valor_energe_kj
        @kj_hidrat=@hidratos_carb*17.0
        @kj_prot=@prot*17.0
        @kj_grasas=@cnt_grasas*37.0
        @kj_sat=@cnt_grasas_sat*37.0
        @kj_energia=0.0
        @kj_energia=@kj_energia+@kj_grasas+@kj_hidrat+@kj_prot
    end
    
    #Calcula el valor energetico de kcal
    def valor_energe_kcal
        @kcal_hidrat=@hidratos_carb*4
        @kcal_prot=@prot*4
        @kcal_grasas=@cnt_grasas*9
        @kcal_sat=@cnt_grasas_sat*9
        @kcal_energia=0.0
        @kcal_energia=@kcal_energia+@kcal_grasas+@kcal_hidrat+@kcal_prot
    end
    
    #Devuelve el valor de sal
    def get_sal
        return @sal 
    end

end