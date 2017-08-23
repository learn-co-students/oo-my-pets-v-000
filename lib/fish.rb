class Fish
  attr_accessor :mood
  attr_reader :name, :owner

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

# was unnecessary to set the owner for this lab.  
  def owner=(owner)
    @owner = owner
    owner.buy_fish(self) unless owner.pets[:fishes].include?(self)
  end


end
