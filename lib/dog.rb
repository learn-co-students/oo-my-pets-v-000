class Dog
  attr_accessor :mood
  def name
    return @name
  end
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
