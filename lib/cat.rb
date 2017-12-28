class Cat
  # INSTANCE ATTRIBUTES
  attr_accessor :mood, :owner
  attr_reader :name
  # INSTANCE
  def initialize(name)
    @name = name
    self.mood = "nervous"
  end
  
end