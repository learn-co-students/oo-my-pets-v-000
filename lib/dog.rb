class Dog
  attr_reader :name #dog cannot change its name, so only a reader method is needed
  attr_accessor :mood, :owner #dog can change its mood, so it needs to be able to both get and set.

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    @species = "Dog"
  end
end
