class Fish
  attr_reader :name
  attr_accessor :mood, :species
  
  def initialize(name)
    @name = name
    self.species = "fish"
    self.mood = "nervous"
  end
end