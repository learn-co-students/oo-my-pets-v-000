class Fish
  attr_accessor :fish, :mood
  attr_reader :name
  
  def initialize(name)
    @name = name
    @fish = fish 
    @mood = "nervous"
  end

  def mood
    @mood 
  end
end