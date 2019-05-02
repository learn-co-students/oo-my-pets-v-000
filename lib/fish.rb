class Fish
  attr_reader :name, :species
  attr_accessor :mood
  
  def initialize(name, mood= "nervous")
    @name = name
    @mood = mood
    @species = "fish"
  end  
end