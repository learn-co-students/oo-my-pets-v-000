class Dog
  attr_reader :name #cannot change the name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
