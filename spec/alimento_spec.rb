require "./lib/gema/alimento"
require "./spec/spec_helper"

RSpec.describe Alimento do
    before :each do
        @a=Alimento.new(12.0,34.0,45.0,56.0,12.0,22.0,12.0,0,0)
        @ap=Alimento.new(10.0,30.0,40.0,50.0,10.0,20.0,10.0,8.0,200.0)
    end 
    
    it "Valor energetico correcto" do
        expect(@a.valor).to eq(2584)
        expect(@ap.valorg).to eq(550.0)
        expect(@a.ir).to eq(25.84)
    end
    
end 