class Fish
  attr_accessor :mood
  attr_reader :name

  def initialize(fish, mood = "nervous")
    @name = fish
    @mood = mood
  end
end
