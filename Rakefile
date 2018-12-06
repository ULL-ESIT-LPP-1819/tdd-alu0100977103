require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "TDD"
task :alimento do
	sh "rspec -I. spec/alimento_spec.rb"
end

desc "Ejecutar clase lista"
task :lista do
	sh "rspec -I. spec/listas_spec.rb"
end

desc "Ejecutar clase valoración"
task :valoracion do
	sh "rspec -I. spec/valoracion_spec.rb"
end

desc "Ejecutar clase valoración"
task :paciente do
	sh "rspec -I. spec/paciente_spec.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
	sh "rspec -I. spec/alimento_spec.rb -n /simple/"
end