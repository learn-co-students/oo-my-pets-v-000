class Cat
  attr_reader :name, :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def mood=(new_mood)
    @mood = new_mood
  end

end
