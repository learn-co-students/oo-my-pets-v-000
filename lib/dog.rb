class Dog
  attr_accessor :mood

  def name
    @name
  end

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
