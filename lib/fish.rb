class Fish
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end

#fish = Fish.new("Flipper")
#dog.name = "Spot"
#fish.mood = "excited"

#puts fish.name
#puts fish.mood
