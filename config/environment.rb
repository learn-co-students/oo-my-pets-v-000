require 'pry'

load './lib/cat.rb'
load './lib/dog.rb'
load './lib/fish.rb'
load './lib/owner.rb'

Dir[File.join(File.dirname(__FILE__), "../lib", "*.rb")].each {|f| require f}
