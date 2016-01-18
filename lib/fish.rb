class Fish
  attr_accessor :mood #required so that the owner or the animal can change
  attr_reader :name #required so that only the owner can change the name
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
  # code goes here
end