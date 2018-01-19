class Cat

  attr_reader :name
  attr_accessor :mood

  def initialize(cat)
    @cat = cat
    @name = cat
    @mood = "nervous"
  end
end
