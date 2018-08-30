class Fish
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name=(name)
    raise NameError is @name != @name
  end
end
