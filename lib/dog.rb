class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end

#dog = Dog.new("Pepper")
#dog.name = "Spot"
#dog.mood = "angry"

#puts dog.name
#puts dog.mood
