require "./lib/gema/alimento"
require "./spec/spec_helper"

RSpec.describe Alimento do
    before :each do
        @a=Alimento.new(12,34,45,56,12,22,12)
    end 
end 