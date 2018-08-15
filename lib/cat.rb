class Cat

  attr_accessor :mood # Cat's mood can be read and changed
  attr_reader :name # Cat's name can only be read, but not changed
  # code goes here
  def initialize(name)
    @name = name # Cat is initialized with a name
    @mood = "nervous" # Cat is initialized with a nervous mood
  end
end
