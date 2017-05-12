require 'pry'
class Cat
  # have all attributes
  attr_accessor :mood
  attr_reader :species, :name

  def initialize(name)
    @species = "cat"
    @name = name
    @mood = "nervous"
  end



end
