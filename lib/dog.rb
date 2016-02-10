class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(dog, mood = "nervous")
    @name = dog
    @mood = mood
  end
end
