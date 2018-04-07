class Dog
  attr_reader :name
  attr_accessor :mood

  def initialize(name = name, mood = "nervous")
    @name = name
    @mood = mood
  end
end
