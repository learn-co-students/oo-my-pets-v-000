class Cat
  attr_reader :name # Belongs to Owner
  attr_accessor :mood # Belongs to Cat

  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
