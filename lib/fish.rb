class Fish
  attr_accessor :mood
  attr_reader :name, :countfish
  def initialize(name)
    @name = name 
    @mood = "nervous"
  end 
   
end