class Fish
  attr_accessor :mood
  attr_reader :name
  def initialize(name)
    @name = name
    @mood = 'nervous'
  end

  def name
    @name.dup.freeze
  end

  def buy_fish(fish)
    self.pets[:fishs] << Fish.new(fish)
  end

end
