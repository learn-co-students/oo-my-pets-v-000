Dir[File.join(File.dirname(__FILE__), "../lib", "*.rb")].each {|f| require f}

require 'bundler'
Bundler.require
require_all 'lib'
require 'pry'

require_relative '../lib/fish.rb'
require_relative '../lib/cat.rb'
require_relative '../lib/owner.rb'
require_relative '../lib/dog.rb'