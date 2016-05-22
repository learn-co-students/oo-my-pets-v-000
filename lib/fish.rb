class Fish
  
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name_of_fish)
    @name = name_of_fish
    @mood = "nervous"
  end
  
end