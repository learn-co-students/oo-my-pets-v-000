class Fish
  attr_accessor :mood
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "fish"
    @mood = "nervous"
  end
end
