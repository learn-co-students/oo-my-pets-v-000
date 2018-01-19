class Cat

  attr_accessor :owner, :mood
  attr_reader :name
  # code goes here
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
end
