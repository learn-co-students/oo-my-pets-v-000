class Fish

  attr_reader :name
  attr_accessor :fish, :mood

  def initialize(fish)
    @fish = fish
    @name = fish
    @mood = "nervous"
  end
end
