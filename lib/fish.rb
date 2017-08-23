class Fish
  attr_accessor :mood
  attr_reader :name, :owner

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def owner=(owner)
    @owner = owner
    owner.buy_fish(self) unless owner.pets[:fishes].include?(self)
  end


end
