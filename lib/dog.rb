class Dog
  # code goes here
  attr_accessor :dog, :mood
  attr_reader :name 
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end 
end