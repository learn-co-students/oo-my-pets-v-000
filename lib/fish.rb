class Fish

  @@fish = []

  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
    @@fish << self
  end

  def self.all
    @@fish
  end

end
