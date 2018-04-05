require 'pry'
class Fish
  attr_accessor  :owner, :mood

  attr_reader :name 
  

 
  
  def initialize(name)
    @name = name 
    @mood = mood = "nervous"
  end
  
def self.feed_fish 
  @mood = "happy"
end

    
  
  
end