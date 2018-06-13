class Cat
  attr_accessor :mood
  attr_reader :name, :species

  def initialize(name)
    @name = name
    @species = "cat"
    @mood = "nervous"
  end

  # code goes here
end
