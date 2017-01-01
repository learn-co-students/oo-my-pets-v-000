class Cat
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def set_name(name)
    self.name = name
  end

  def name
    @name
  end

end
