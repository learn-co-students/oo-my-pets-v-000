class Fish
  # code goes here
  attr_accessor :fish, :mood
  attr_reader :name 
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end 
end