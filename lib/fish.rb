class Fish

  attr_accessor :mood
  attr_reader :name

  @@fish_count = 0

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@fish_count += 1
  end

  def self.fish_count
    @@fish_count
  end

end
