require "./spec/spec_helper"

RSpec.describe Valoracion do
    before :each do
        @ind_1=Valoracion.new(12.0,34.0,45.0,56.0,12.0,22.0,12.0,0,0,"Juan",0)
        @ind_2=Valoracion.new(10.0,30.0,40.0,50.0,10.0,20.0,10.0,8.0,200.0,"Maria",1)
    end 
    
    it "Ver si es o no obeso el individuo" do
        expect(@ind_1.IMC).to eq(1)
    end
    
end