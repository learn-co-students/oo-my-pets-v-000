class Fish
  # code goes here
  attr_reader :name
  attr_accessor :mood

  def initialize(name = nil)
    @name = name
    @mood = "nervous"
  end
end
