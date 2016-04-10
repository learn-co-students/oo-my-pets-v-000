class Fish
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end

  def buy_fish(name)
    newFish = Fish.new(name)
    Owner.pets[fishes] = newFish
  end

end