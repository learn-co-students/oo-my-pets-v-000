Dir[File.join(File.dirname(__FILE__), "../lib", "*.rb")].each {|f| require f}

require 'pry'

require_relative '../lib/dog'
require_relative '../lib/fish'
require_relative '../lib/cat'
require_relative '../lib/owner'
