class Fish
  # code goes here

  attr_accessor :mood
  attr_reader :fish_name

  def initialize(fish_name)
    @fish_name = fish_name
    mood = "nervous"
    pets[fish] << self
  end
end
