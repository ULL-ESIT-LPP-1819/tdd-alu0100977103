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
        
        @menu=[@et_1,@et_2]
        @menu2=[@et_2,@et_3]
        @menu3=[@et_3,@et_4]
        @menu4=[@et_4,@et_5]
        @menu5=[@et_5,@et_1]
        
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