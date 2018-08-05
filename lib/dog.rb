class Dog
  attr_reader :name 
  attr_accessor :mood
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
  
  def self.name 
    @name
  end
  
  def self.mood(new_mood)
    self.mood = (new_mood)
  end
end