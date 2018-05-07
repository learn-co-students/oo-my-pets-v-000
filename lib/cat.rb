class Cat
  # code goes here
  
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name, cat_mood = "nervous") 
    @name = name 
    @mood = cat_mood
  end 
  
  def name
    @name
  end 
end