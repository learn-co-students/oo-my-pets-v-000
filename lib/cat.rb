class Cat
  attr_accessor :mood
  attr_reader :name

  def initialize(cat, mood = "nervous")
    @name = cat
    @mood = mood
  end
end
