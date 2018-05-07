class Dog
  # code goes here
  
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name, dog_mood = "nervous") 
    @name = name 
    @mood = dog_mood
  end 
  
  def name
    @name
  end 
  
  
end