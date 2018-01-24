require_relative './config/environment'

puts "Welcome to our Pet Shop!"

def reload!
  load './lib/cat.rb'
  load './lib/dog.rb'
  load './lib/fish.rb'
  load './lib/owner.rb'
end

desc "A console"
task :console do
  Pry.start
end
