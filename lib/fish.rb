class Fish

  attr_accessor :mood, :fishes
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

  def mood=(mood)
    @mood = mood
  end

end
