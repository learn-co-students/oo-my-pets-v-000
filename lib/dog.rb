class Dog
  
  attr_accessor :name, :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name=(name)
    raise "Exception"
  end

  def mood=(mood)
    @mood = mood
  end

end