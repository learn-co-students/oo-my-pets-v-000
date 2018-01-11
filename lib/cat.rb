class Cat
  #The class initializes the cat with a name. You can't change the name because you only allow the object to read it's name
  #after it's initialized. The object initializes with a mood of nervous that you can change because of the attr_accessor.

  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
