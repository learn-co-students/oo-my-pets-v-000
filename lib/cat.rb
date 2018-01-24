require 'pry'

class Cat
  attr_accessor :mood, :cats
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

# Cat can initialize a cat
# Cat initializes with a name
# Cat initializes with a nervous mood
# Cat can change its mood
