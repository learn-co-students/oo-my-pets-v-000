class Fish
  # code goes here
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name, fish_mood = "nervous") 
    @name = name 
    @mood = fish_mood
  end 
  
  def name
    @name
  end 
 
end