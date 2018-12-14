require "./lib/gema/paciente"
require "./spec/spec_helper"

RSpec.describe Paciente do
    before :each do
        @ind_1=Paciente.new(12.0,34.0,45.0,56.0,12.0,22.0,12.0,0,0,"Juan",0,0,23,0.0)
        @ind_2=Paciente.new(10.0,30.0,40.0,50.0,10.0,20.0,10.0,8.0,200.0,"Maria",1,0,21,0.12)
        @ind_3=Paciente.new(50.0,30.0,40.0,50.0,10.0,20.0,10.0,8.0,30.0,"Lucia",1,1,34,0.27)
        @ind_4=Paciente.new(50.0,50.0,40.0,50.0,10.0,20.0,10.0,8.0,45.0,"Luis",1,1,45,0.54)
        @ind_5=Paciente.new(43.0,17.0,32.0,50.0,10.0,20.0,10.0,8.0,60.0,"Daniel",1,1,22,0.12)
    end 
    
    it "To_s correcto" do
        expect(@ind_3.to_s).to eq("50.0,30.0,40.0,50.0,10.0,20.0,10.0,8.0,30.0,Lucia,1,1,34,0.27")
    end 
    
    it "Ver si es o no obeso el individuo" do
        expect(@ind_1.IMC).to eq(0)  #No tiene obesidad
        expect(@ind_2.IMC).to eq(0)  #Tiene obesidad
    end
    
    it "Comprobación de clase de un objeto" do
        expect(@ind_1.class.to_s).to eq("Paciente")
    end
    
     it "Comprobación de superclase de un objeto" do
        expect(Paciente.superclass).to eq(Alimento)
        expect(Alimento.superclass).to eq(Object)
    end
    
    it "Comparable" do
        expect(@ind_3 < @ind_4).to eq(false)
        expect(@ind_1 > @ind_2).to eq(true)
        expect(@ind_5.between?(@ind_1,@ind_2)).to eq(false)
        #expect([ @ind_2, @ind_1, @ind_3, @ind_5,@ind_4 ].sort).to eq([ @ind_2, @ind_1, @ind_3, @ind_5,@ind_4])
    end
    
end 