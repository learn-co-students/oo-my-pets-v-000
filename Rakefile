require_relative './config/environment'

puts "Welcome to dogs fish cats and owner"

def reload!
  load './lib/cat.rb'
  load './lib/fish.rb'
  load './lib/dog.rb'
  load './lib/owner.rb'
end

desc "A console"
task :console do
  Pry.start
end
