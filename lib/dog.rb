class Dog
  attr_accessor :dog, :mood
  attr_reader :name
  
  def initialize(name)
    @name = name
    @dog = dog 
    @mood = "nervous"
  end

  def mood
    @mood 
  end
end