class Dog
  # code goes here
  attr_accessor :name, :mood

  def initialize(name)
    @name=name
    @mood="nervous"
  end

  def mood=(mood)
    @mood=mood
  end

  def raise_exception
    raise 'An error has occured'
  end

  def name=(name)
    raise_exception
  end
end
