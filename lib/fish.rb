class Fish
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name
  @@all_fish = []
  def initialize(name)
    @name=name
    @mood = "nervous"
    @@all_fish << self
  end
  def self.all
    @@all_fish
  end
end
