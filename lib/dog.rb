class Dog
  attr_accessor :mood

  def initialize(name, mood="nervous") #mood=nervous)
    @name=name
    @mood=mood
  end

  def name
    @name
  end
  # code goes here
end
