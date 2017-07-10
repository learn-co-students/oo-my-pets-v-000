class Dog
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name=(name)
    raise NameError, 'This is not my name' unless self.name == name
  end
end
