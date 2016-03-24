class Cat
  attr_accessor :mood
  attr_reader :name
  @@all_cats = []
  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all_cats << self
  end
  def self.all
    @@all_cats
  end
  # code goes here
end
