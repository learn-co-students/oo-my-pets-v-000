class Fish
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name
  
  def initialize(name)
    @name = name
    @fish = []
    @mood = "nervous"
  end
end