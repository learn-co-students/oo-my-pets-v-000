class Fish
  # have all attributes
  attr_accessor :mood
  attr_reader :name, :species
    #attr_writer

  def initialize(name)
    @name = name
    @mood = "nervous"
    @species = "fish"
  end
end
