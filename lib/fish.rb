class Fish

  attr_accessor :mood # Fish's mood can be read and changed
  attr_reader :name # Fish's name can only be read, but not changed
  # code goes here
  def initialize(name)
    @name = name # Fish is initialized with a name
    @mood = "nervous" # Fish is initialized with a nervous mood
  end
end
