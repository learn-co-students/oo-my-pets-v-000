class Fish
  # code goes here
  attr_reader :name, :owner
  attr_accessor :mood 
  
  def initialize(name)
    @name = name 
    @mood = "nervous"
  end 
  # code goes here
end