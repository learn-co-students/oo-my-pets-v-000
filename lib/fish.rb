class Fish
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def owner=(owner)
    @owner = owner
    owner.buy_fish(self)
  end
end
