require_relative './config/environment'
require 'rake'
require 'rspec/core/rake_task'
puts "Welcome to "

def reload!
  load_all './lib'
  load './lib/cat.rb'
  load './lib/dog.rb'
  load './lib/fish.rb'
  load './lib/owner.rb'
end

desc "A console"
task :console do
  Pry.start
end