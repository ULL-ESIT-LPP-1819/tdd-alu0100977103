require "./spec/spec_helper"

RSpec.describe Valoracion do
    before :each do
        @et_1=Valoracion.new(20,22,11,33,6,54,61,2,92)
        @et_2=Valoracion.new(30,32,11,43,2,54,61,0,0)
        @et_3=Valoracion.new(30.0,42.0,11.0,33.0,3.0,54.0,61.0,0.0,0.0)
        @et_4=Valoracion.new(40,22,11,33,4,54,71.0,2,89)
        @et_5=Valoracion.new(10,22,11,33,5,54,61,2,89)
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