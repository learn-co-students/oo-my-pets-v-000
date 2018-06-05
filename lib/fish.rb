require_relative 'owner.rb'
require_relative 'dog.rb'
require_relative 'cat.rb'

class Fish
  attr_reader :name, :mood
    
  @@fish = []
  
    def initialize(name)
      @name = name
      @mood = "nervous"
      @@fish << self
    end
    
    def mood=(mood)
     @mood = mood
   end      
end