class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name) #Dog can initialize a cat, initializes with a name, and a nervous mood
    @name = name
    @mood = "nervous"
  end
end
