class Dog
  # have all attributes
  attr_accessor :mood
  attr_reader :name, :species
    #attr_writer

  def initialize(name)
    @name = name
    @mood = "nervous"
    @species = "dog"
  end
end
