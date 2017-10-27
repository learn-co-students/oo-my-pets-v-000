class Dog

  attr_reader :name
  attr_accessor :mood

  def initialize(dog)
    @dog = dog
    @name = dog
    @mood = "nervous"
  end
end
