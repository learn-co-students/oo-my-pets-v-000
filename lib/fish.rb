class Fish
  # can initialize a fish
  # initialize with a name
  # can't change its name
  # initializes with a nervous mood
  # can change its mood

  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
