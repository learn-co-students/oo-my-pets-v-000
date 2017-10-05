class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end

# can't change its name
#   initializes with a nervous mood (FAILED - 11)
#   can change its mood (FAILED - 12)can't change its name
#   initializes with a nervous mood (FAILED - 11)
#   can change its mood (FAILED - 12)
