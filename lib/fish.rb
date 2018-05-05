class Fish
  # code goes here
  attr_reader :name
  attr_accessor :mood
  # code goes here
  def initialize(name="Nemo", mood="nervous")
    @name = name
    @mood = mood
  end
end
