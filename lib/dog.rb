class Dog
  attr_reader :name
  attr_accessor :mood, :species
  
  def initialize(name)
    @name = name
    self.species = "dog"
    self.mood = "nervous"
  end
end