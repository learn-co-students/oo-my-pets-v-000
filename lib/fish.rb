class Fish
  attr_accessor :mood
  attr_reader :name, :species, :owner

  def initialize(name)
    @name = name
    @mood = "nervous"
    @species = "fish"
  end
end
