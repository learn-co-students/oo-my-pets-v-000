class Fish

  attr_accessor :mood, :owner
  attr_reader :name
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  
  # def new_fish(name)
  #   my_new_fish = self.new(name)
  #   my_new_fish.owner_name = @owner
  #   my_new_fish
  # end
  
  # def owner_name=(name)
  #   self.owner = Owner.buy_fish(name)
  # end
end