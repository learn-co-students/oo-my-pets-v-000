class Dog
  attr_writer
  attr_reader :owner, :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
