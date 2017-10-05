class Cat
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end

# Cat
#   can initialize a cat (FAILED - 1)
#   initializes with a name (FAILED - 2)
#   can't change its name
#   initializes with a nervous mood (FAILED - 3)
#   can change its mood (FAILED - 4)
