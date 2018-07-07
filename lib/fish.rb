class Fish
  attr_reader :name
  attr_accessor :mood

  def initialize(name="Goldy")
    @name = name
    @mood = "nervous"
  end
end
