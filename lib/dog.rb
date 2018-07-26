class Dog
  attr_reader :name, :owner #dog cannot change its name, so only a reader method is needed
  attr_accessor :mood #dog can change its mood, so it needs to be able to both get and set.

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end
