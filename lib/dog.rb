class Dog

  attr_accessor :mood
  attr_reader :name

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end

  def name=(name)
    raise Error if name != self.name
    @name = name
  end

end
