class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(mood = "nervous", name)
    @mood = mood
    @name = name
  end
end
