require "./lib/gema/listas"
require "./spec/spec_helper"
require "./lib/gema/alimento"

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
    end
    
    it "Extraer foto comienzo" do
        @lista.extract_by_begin()
	end
    
    it "Insertar en listas alimentos al comienzo" do
         @lista.insert_by_begin(@frambuesa)
         @lista.insert_by_end(@platano)
     end 
     
     it "Comprobando listas mayor o menor de sal" do
         @lista_mayor=LinkedList.new
         @lista_menor=LinkedList.new
         if @platano.get_sal >6
             @lista_mayor.insert_by_begin(@platano)
         else
             @lista_menor.insert_by_begin(@platano)
         end 
    end
    
     
     #sudo -u postges psql
     
end