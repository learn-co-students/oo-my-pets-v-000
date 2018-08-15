class Dog

  attr_accessor :mood # Dog's mood can be read and changed
  attr_reader :name # Dog's name can only be read, but not changed
  # code goes here
  def initialize(name)
    @name = name # Dog is initialized with a name
    @mood = "nervous" # Dog is initialized with a nervous mood
  end
end
