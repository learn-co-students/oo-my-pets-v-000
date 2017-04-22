class Dog
  attr_accessor :mood
  attr_reader :name,:owner

  def initialize(name)
    @name = name
    self.mood = "nervous"
  end

  def set_owner=(owner)
    @owner = owner
  end

  def walk
    @mood = "happy"
  end

  def sold
    self.set_owner = nil
    self.mood = "nervous"
  end

end
