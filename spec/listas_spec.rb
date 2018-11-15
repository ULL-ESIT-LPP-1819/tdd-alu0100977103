require "./lib/gema/listas"
require "./spec/spec_helper"
RSpec.describe LinkedList do
    before :each do
        @lista = LinkedList.new
        @platano=Alimento.new(12.0,34.0,45.0,56.0,12.0,22.0,12.0,0,0)
        @manzana=Alimento.new(10.0,30.0,40.0,50.0,10.0,20.0,10.0,8.0,200.0)
        @pera=Alimento.new(80.0,10.0,50.0,80.0,1.0,2.0,34.0,0,0)
        @fresa=Alimento.new(40.0,23.0,34.0,123.0,12.0,23.0,34.0,0,0)
        @frambuesa=Alimento.new(12.0,23.0,45.0,67.0,12.0,34.0,56.0,0,0)
    end
    
    it "Insertar en lista los alimentos" do
        @lista.insert_by_end(@platano)
        @lista.insert_by_end(@manzana)
        @lista.insert_by_end(@pera)
        @lista.insert_by_end(@fresa)
        @lista.insert_by_end(@frambuesa)
    end
end