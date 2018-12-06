require "./lib/gema/alimento"
require "./spec/spec_helper"

RSpec.describe Alimento do
    before :each do
        @individuo1=Alimento.new(50.0,40.0,[2.0,4.0,5.0],[2.0,5.0,8.0],[1.0,2.0,3.0],[1.0,5.0,6.0],[8.0,10.0],[38.0,40.0],[60.0,70.0])
    end 
    
    it "to_s correcto" do
        expect(@individuo1.to_s).to eq("50.0,40.0,[2.0, 4.0, 5.0],[2.0, 5.0, 8.0],[1.0, 2.0, 3.0],[1.0, 5.0, 6.0],[8.0, 10.0],[38.0, 40.0],[60.0, 70.0]")
    end
    
    it "Valor energetico correcto" do
        expect(@individuo1.IMC).to eq(0.03125)
    end
    
end 