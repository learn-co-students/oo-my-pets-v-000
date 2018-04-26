class Fish
  attr_reader :name
  attr_accessor :mood
  def initialize(n)
    @name = n
    @mood = "nervous"
  end
end
