class Cat

  attr_accessor :mood #because it CAN change its mood
  attr_reader :name #because it cannot change its own name

  def initialize(name)
      @name = name
      @mood = "nervous"
  end
end
