class Dog
  attr_accessor :mood
  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name=(name)
    raise error
  end

  def name
    @name
  end
  
end
