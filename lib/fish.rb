class Fish
  # code goes here
  attr_accessor :mood

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

  def name
    @name.freeze
  end
end
