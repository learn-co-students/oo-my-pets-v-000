require_relative 'owner.rb'
require_relative 'fish.rb'
require_relative 'cat.rb'

class Dog
  attr_reader :name, :mood
    
    def initialize(name)
      @name = name
      @mood = "nervous"
    end
    
    def mood=(mood)
     @mood = mood
   end      
end