class Dog

  @@dogs = []

  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@dogs << self
  end

  def self.all
    @@dogs
  end

end
