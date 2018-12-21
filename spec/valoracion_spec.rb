require "./spec/spec_helper"

RSpec.describe Valoracion do
    before :each do
        @et_1=Valoracion.new(20,22,11,33,6,54,61,2,92)
        @et_2=Valoracion.new(30,32,11,43,2,54,61,0,0)
        @et_3=Valoracion.new(30.0,42.0,11.0,33.0,3.0,54.0,61.0,0.0,0.0)
        @et_4=Valoracion.new(40,22,11,33,4,54,71.0,2,89)
        @et_5=Valoracion.new(10,22,11,33,5,54,61,2,89)
        
        @ind_1=Paciente.new(12.0,34.0,45.0,56.0,12.0,22.0,12.0,0,0,"Juan",0,0,23,0.0)
        @ind_2=Paciente.new(10.0,30.0,40.0,50.0,10.0,20.0,10.0,8.0,200.0,"Maria",1,0,21,0.12)
        @ind_3=Paciente.new(50.0,30.0,40.0,50.0,10.0,20.0,10.0,8.0,30.0,"Lucia",1,1,34,0.27)
        @ind_4=Paciente.new(50.0,50.0,40.0,50.0,10.0,20.0,10.0,8.0,45.0,"Luis",1,1,45,0.54)
        @ind_5=Paciente.new(43.0,17.0,32.0,50.0,10.0,20.0,10.0,8.0,60.0,"Daniel",1,1,22,0.12)
        
            @menu = LinkedList.new
            @menu.insert_val(@et_2)
            @menu.insert_val(@et_4)
 
            @menu2 = LinkedList.new
            @menu2.insert_val(@et_3)
            @menu2.insert_val(@et_5)
 
            @menu3 = LinkedList.new
            @menu3.insert_val(@et_1)
            @menu3.insert_val(@et_2)
 
            @menu4 = LinkedList.new
            @menu4.insert_val(@et_5)
            @menu4.insert_val(@et_1)
 
            @menu5 = LinkedList.new
            @menu5.insert_val(@et_3)
            @menu5.insert_val(@et_4)
 
            @menu_array = [@menu, @menu2, @menu3, @menu4, @menu5, @menu, @menu2, @menu3, @menu4, @menu5]
            
            @paciente_list = LinkedList.new

            @paciente_list.insert_val(@ind_1)
            @paciente_list.insert_val(@ind_2)
            @paciente_list.insert_val(@ind_3)
            @paciente_list.insert_val(@ind_4)
            @paciente_list.insert_val(@ind_5)
            @paciente_list.insert_val(@ind_)
            @paciente_list.insert_val(@ind_2)
            @paciente_list.insert_val(@ind_3)
            @paciente_list.insert_val(@ind_4)
            @paciente_list.insert_val(@ind_5)
        
    end 

    it "Se ordena una lista de valoraciones nutricionales de pacientes con for, each y sort correctamente " do
        expect(@paciente_list.sort_each).to eq([1729.97, 1729.97, 1802.86, 1802.86, 1955.05, 1955.05, 3038.1, 3038.1, 3060.66, 3060.66])
        expect(@paciente_list.sort_for).to eq([1729.97, 1729.97, 1802.86, 1802.86, 1955.05, 1955.05, 3038.1, 3038.1, 3060.66, 3060.66])
        expect(@paciente_list.map{ |x| x.gasto_energetico_total}.sort ).to eq([1729.97, 1729.97, 1802.86, 1802.86, 1955.05, 1955.05, 3038.1, 3038.1, 3060.66, 3060.66])
    end

    it "Gasto energetico total calculo" do
        expect(@ind_1.gasto_energetico).to eq(222.5)
        expect(@ind_2.gasto_energetico).to eq(187.5)
        expect(@ind_3.gasto_energetico).to eq(356.5)
        expect(@ind_4.gasto_energetico).to eq(426.5)
        expect(@ind_5.gasto_energetico).to eq(265.25)
    end
    
    it "Efecto termogeno" do
        expect(@ind_1.efecto_ternogeno).to eq(22.25)
        expect(@ind_2.efecto_ternogeno).to eq(18.75)
        expect(@ind_3.efecto_ternogeno).to eq(35.65)
        expect(@ind_4.efecto_ternogeno).to eq(42.650000000000006)
        expect(@ind_5.efecto_ternogeno).to eq(26.525000000000002)
    end
    
    it "Gasto actividad fisica" do
        expect(@ind_1.gasto_actividad).to eq(0.0)
        expect(@ind_2.gasto_actividad).to eq(22.5)
        expect(@ind_3.gasto_actividad).to eq(96.25500000000001)
        expect(@ind_4.gasto_actividad).to eq(230.31)
        expect(@ind_5.gasto_actividad).to eq(31.83)
    end
    
    it "Gasto actividad total" do
        expect(@ind_1.gasto_total).to eq(244.75)
        expect(@ind_2.gasto_total).to eq(228.75)
        expect(@ind_3.gasto_total).to eq(488.405)
        expect(@ind_4.gasto_total).to eq(699.46)
        expect(@ind_5.gasto_total).to eq(323.60499999999996)
    end
    
    it "Menú dietético 1 para el paciente 4" do
            calorias_menu = @menu.map{ |i| i.valor_energe_kj}
            total_calorias = calorias_menu.reduce(:+)
            gasto_energetico = @ind_4.gasto_total
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
    end
    
    it "Menú dietético 2 para el paciente 5" do
            calorias_menu = @menu2.map{ |i| i.valor_energe_kj}
            total_calorias = calorias_menu.reduce(:+)
            gasto_energetico = @ind_5.gasto_total
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
    end
    
    it "Menú dietético 3 para el paciente 3" do
            calorias_menu = @menu3.map{ |i| i.valor_energe_kj}
            total_calorias = calorias_menu.reduce(:+)
            gasto_energetico = @ind_3.gasto_total
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
    end
    
    it "Menú dietético 4 para el paciente 2" do
            calorias_menu = @menu4.map{ |i| i.valor_energe_kj}
            total_calorias = calorias_menu.reduce(:+)
            gasto_energetico = @ind_2.gasto_total
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
    end
    
    it "Menú dietético 5 para el paciente 1" do
            calorias_menu = @menu5.map{ |i| i.valor_energe_kj}
            total_calorias = calorias_menu.reduce(:+)
            gasto_energetico = @ind_1.gasto_total
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
    end

    it "To_s correcto" do
        expect(@et_3.to_s).to eq("30.0,42.0,11.0,33.0,3.0,54.0,61.0,,0.0")
    end 
    
    it "Valor energetico kcal y kj obtenido" do
        expect(@et_3.valor_energe_kj).to eq(3033.0)
        expect(@et_3.valor_energe_kcal).to eq(726.0)
    end 
    
    it "Comparable" do
        expect(@et_3 < @et_4).to eq(true)
        expect(@et_1 > @et_2).to eq(false)
        expect(@et_5.between?(@et_1,@et_2)).to eq(true)
        expect([ @et_5, @et_1, @et_3, @et_2,@et_4 ].sort).to eq([ @et_5, @et_1, @et_3, @et_2,@et_4 ])
    end
    
end