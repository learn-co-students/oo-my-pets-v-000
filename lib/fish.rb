class Fish
  # code goes here
  attr_accessor :mood, :species
  attr_reader :name

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end


end
