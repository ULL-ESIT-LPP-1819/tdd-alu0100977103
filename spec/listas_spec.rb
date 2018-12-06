require "./lib/gema/listas"
require "./spec/spec_helper"
require "./lib/gema/valoracion"

RSpec.describe LinkedList do
    before :each do
         @lista = LinkedList.new
         @list = LinkedList.new
         @list_ind=LinkedList.new
         @list.what(0)
         @list_ind.what(1)
        @et_1=Valoracion.new(20,22,11,33,6,54,61,2,92)
        @et_2=Valoracion.new(30,32,11,43,2,54,61,0,0)
        @et_3=Valoracion.new(30,42,11,33,3,54,61,0,0)
        @et_4=Valoracion.new(40,22,11,33,4,54,71,2,89)
        @et_5=Valoracion.new(10,22,11,33,5,54,61,2,89)
        @individuo2=Alimento.new(10,16,[6,16,12],[7,12,33],[1,8,3],[1,12,6],[33,10],[333,17],[60,70])
        @individuo3=Alimento.new(1020,18,[9,12,12],[2,12,33],[1,4,3],[1,12,6],[33,10],[333,16],[60,70])
        @individuo4=Alimento.new(30,12,[467,13,12],[42,12,33],[1,43,3],[1,12,6],[33,10],[333,40],[60,70])
        @individuo5=Alimento.new(40,12,[1,14,12],[2,12,33],[1,23,3],[1,12,6],[33,10],[333,13],[60,70])
        @individuo1=Alimento.new(10,14,[4,15,12],[5,12,33],[1,6,3],[1,12,6],[3,10],[333,15],[60,70])
        @list.insert_set([@et_1,@et_2,@et_3,@et_4,@et_5])
        @list_ind.insert_set([@individuo1,@individuo2,@individuo3,@individuo4,@individuo5])
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
    
    it "Enumerable con etiquetas" do
        expect(@list.max).to eq(71)
        expect(@list.min).to eq(61)
        expect(@list.sort).to eq([61,61,61,61,71])
        expect(@list.select{ |num| num>65}).to eq([71])
        expect(@list.collect{|num| num=0}).to eq([0,0,0,0,0])
    end
    
    it "Enumerable con indiividuos" do
        expect(@list_ind.max).to eq(1020)
        expect(@list_ind.min).to eq(10)
        expect(@list_ind.sort).to eq([10, 10, 30, 40, 1020])
        expect(@list_ind.select{|num| num>65}).to eq([1020])
        expect(@list_ind.collect{|num| num=0}).to eq([0,0,0,0,0])
    end
    
     
     #sudo -u postges psql
     
end