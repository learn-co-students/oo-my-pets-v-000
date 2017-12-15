class Fish

  attr_accessor :mood #because it CAN change its mood
  attr_reader :name #because it CANNOT change its own name

  def initialize(name)
      @name = name
      @mood = "nervous"
  end
end
