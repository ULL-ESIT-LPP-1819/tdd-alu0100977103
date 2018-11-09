require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

desc "TDD"
task :spec do
	sh "rspec -I. spec/alimento_spec.rb"
end

desc "Ejecutar solo las pruebas simples"
task :simple do
	sh "rspec -I. spec/alimento_spec.rb -n /simple/"
end