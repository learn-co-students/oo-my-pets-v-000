class Cat
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def self.mood(new_mood)
    @mood = new_mood
  end

end
