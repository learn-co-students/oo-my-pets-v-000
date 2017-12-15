class Fish

  attr_accessor :mood
  attr_reader :name #because it cannot change its own name

  def initialize(fish)
      @name = name
      @mood = "nervous"
  end
end
