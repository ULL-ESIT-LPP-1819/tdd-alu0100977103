require "./lib/gema/listas"
require "./spec/spec_helper"
require "./lib/gema/valoracion"

RSpec.describe LinkedList do
    before :each do
         @lista = LinkedList.new
        @et_1=Valoracion.new(20,22,11,33,6,54,61,2,92)
        @et_2=Valoracion.new(30,32,11,43,2,54,61,0,0)
        @et_3=Valoracion.new(30.0,42.0,11.0,33.0,3.0,54.0,61.0,0.0,0.0)
        @et_4=Valoracion.new(40,22,11,33,4,54,71,2,89)
        @et_5=Valoracion.new(10,22,11,33,5,54,61,2,89)
    end
    
    it "Insertar en lista los alimentos" do
        @lista.insert_by_end(@et_1)
    end
    
    it "Insertar en listas alimentos al comienzo" do
         @lista.insert_by_begin(@et_2) #Deberia mostrarse este
         @lista.insert_by_begin(@et_3)
         @lista.extract_by_begin
         puts @lista.to_s
     end 
    
    it "Insertar en listas alimentos al comienzo" do
         @lista.insert_by_begin(@et_4)
         @lista.insert_by_end(@et_5)
     end 
     
     it "Comprobando listas mayor o menor de sal" do
         @lista_mayor=LinkedList.new
         @lista_menor=LinkedList.new
         if @et_3.get_sal >6
             @lista_mayor.insert_by_begin(@et_3)
         else
             @lista_menor.insert_by_begin(@et_3)
         end 
    end
    
     
     #sudo -u postges psql
     
end