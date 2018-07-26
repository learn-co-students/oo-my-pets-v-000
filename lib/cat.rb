class Cat
  attr_reader :name
  attr_accessor :mood, :owner

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    @species = "Cat"
  end
end
