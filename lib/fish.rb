require 'pry'

class Fish
  attr_accessor :mood, :fish
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end
  
  def change_mood(mood)
    @mood = "#{mood}"
  end
end

# Fish can initialize a fish
# Fish initializes with a name
# Fish initializes with a nervous mood
# Fish can change its mood
