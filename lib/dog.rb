class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = "nervous"
  end

  def name
    @name
  end

end
