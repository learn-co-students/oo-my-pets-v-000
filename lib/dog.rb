class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood="nervous")
    @name=name
    @mood=mood
  end

  def mood
    @mood
  end

end
