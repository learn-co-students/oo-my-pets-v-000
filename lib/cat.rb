class Cat
  # code goes here
  attr_reader :name
  attr_accessor :mood

  def initialize(name, mood = "nervous")
    @mood = mood
    @name = name
  end
end


# can initialize a cat (FAILED - 1)
# initializes with a name (FAILED - 2)
# can't change its name
# initializes with a nervous mood (FAILED - 3)
# can change its mood (FAILED - 4)