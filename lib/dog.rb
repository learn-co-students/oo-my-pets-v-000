class Dog
  attr_accessor :mood
  attr_reader :name
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name=(name)
    raise_error
  end
end
