class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def self.mood(new_mood)
    @mood = new_mood
  end

end
