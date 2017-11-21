class Fish
  # code goes here
  attr_accessor :mood
  attr_reader :name

  @@all_fish = []

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@all_fish<<self
  end

  def mood=(mood)
    @mood = mood
  end

  def self.all
    @@all_fish
  end
end
