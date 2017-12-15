class Cat

  attr_accessor :mood
  attr_reader :name #because it cannot change its own name

  def initialize(cat)
      @name = name
      @mood = "nervous"
  end
end
