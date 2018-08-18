require 'pry'

#belongs to owner
class Fish

  attr_accessor :owner, :mood
  attr_reader :name, :species

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    @species = species
  end

end
