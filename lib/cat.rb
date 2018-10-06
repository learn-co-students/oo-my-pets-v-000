class Cat
  attr_reader :name
  attr_accessor :mood, :species
  
  def initialize(name)
    @name = name
    self.species = "cat"
    self.mood = "nervous"
  end
  
end