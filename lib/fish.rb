class Fish
  attr_accessor :mood
  attr_reader :name

  def initialize(fish_name)
    @name = fish_name
    @mood = "nervous"
  end

end
