class Fish
  # code goes here
  attr_accessor :mood
  def initialize(name)
    @name = name
    @mood = "nervous"

  end

  def name
    @name.dup.freeze
  end

end
