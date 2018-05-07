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
  
  def create_by_name(fish_name)
    new_fish = self.new(fish_name)
    new_fish
  end 
  
 
end