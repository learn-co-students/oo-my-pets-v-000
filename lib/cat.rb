require 'pry'
class Cat
  attr_accessor :mood
  attr_reader :name, :species, :owner 


  def initialize(name)
    @name = name
    @mood = "nervous"
    @species = "cat"
  end
end
