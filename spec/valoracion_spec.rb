require "./spec/spec_helper"

RSpec.describe Valoracion do
    before :each do
        @ind_1=Valoracion.new(12.0,34.0,45.0,56.0,12.0,22.0,12.0,0,0,"Juan",0,0.038)
        @ind_2=Valoracion.new(10.0,30.0,40.0,50.0,10.0,20.0,10.0,8.0,200.0,"Maria",1,0.048)
        @ind_3=Valoracion.new(50.0,30.0,40.0,50.0,10.0,20.0,10.0,8.0,30.0,"Lucia",1,0.034)
        @ind_4=Valoracion.new(20.0,15.0,40.0,50.0,10.0,20.0,10.0,8.0,45.0,"Luis",1,0.040)
        @ind_5=Valoracion.new(43.0,17.0,32.0,50.0,10.0,20.0,10.0,8.0,60.0,"Daniel",1,0.042)
    end 
    
    it "Ver si es o no obeso el individuo" do
        expect(@ind_1.IMC).to eq(0)  #No tiene obesidad
        expect(@ind_2.IMC).to eq(1)  #Tiene obesidad
    end
    
    it "Comprobación de clase de un objeto" do
        expect(@ind_1.class.to_s).to eq("Valoracion")
    end
    
     it "Comprobación de superclase de un objeto" do
        expect(Valoracion.superclass).to eq(Alimento)
        expect(Alimento.superclass).to eq(Object)
    end
    
end