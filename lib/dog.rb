require 'pry'

class Dog
  attr_accessor :mood, :dogs
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

# Dog can initialize a dog
# Dog initializes with a name
# Dog initializes with a nervous mood
# Dog can change its mood
