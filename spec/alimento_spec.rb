require "./lib/gema/alimento"
require "./spec/spec_helper"

RSpec.describe Alimento do
    before :each do
        @a=Alimento.new(12,34,45,56,12,22,12,0,0)
        @ap=Alimento.new(12,34,45,56,12,22,12,8,200)
    end 
    it "Valor energetico correcto" do
        expect(@a.valor).to eq(2584)
        expect(@ap.valorg).to_eq(90)
    end
end 