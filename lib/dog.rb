require 'pry'

#belongs to owner
class Dog

  attr_accessor :owner, :mood
  attr_reader :name, :species

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    @species = species
  end

end
