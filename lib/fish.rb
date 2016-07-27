class Fish
  # code goes here
  attr_accessor :mood
  attr_reader :name
  @@all = []

  def initialize(fish_name)
    @name = fish_name
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end
end