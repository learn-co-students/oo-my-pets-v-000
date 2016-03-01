class Dog
  attr_reader :name 
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def happy
    @mood = "happy"
  end

  def nervous
    @mood = "nervous"
  end
end