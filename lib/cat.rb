class Cat

  attr_reader :name #cannot change the name
  attr_accessor :mood #can change the mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
