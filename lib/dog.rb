class Dog
  attr_accessor :mood
  attr_reader :name
  @@all_dogs = []
  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all_dogs << self
  end
  def self.all
    @@all_dogs
  end
  # code goes here
end
