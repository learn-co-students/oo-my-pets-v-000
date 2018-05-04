class Dog
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name
  
  def initialize(name)
    @name = name
    @dog = []
    @mood = "nervous"
  end
end