class Dog

  attr_reader :name # Cat can't change its name, so reader method is best
  attr_accessor :mood # Cat CAN change its mood so accessor method is best

  def initialize(name)
    @name = name
    @mood = "nervous" # initializes with a nervous mood
  end

end
