class Cat
  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"

  end

  def name
    @name
  end

end
