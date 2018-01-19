require 'pry'

class Fish
  attr_accessor  :mood 
  attr_reader :name
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
end
fish = Fish.new(name, mood = "nervous")
fish.name
end
