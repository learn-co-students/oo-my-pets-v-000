class Fish
  
  attr_reader :name
  attr_accessor :mood
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  
  def buy_fish(name)
    newFish = Fish.new(name)
    Owner.pets[fishes] = newFish
  end
end