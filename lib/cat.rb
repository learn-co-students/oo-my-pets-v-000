class Cat
  attr_accessor :owner, :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
end
