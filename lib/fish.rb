class Fish

  #add owner here because a fish belongs to an owner
  attr_accessor :mood, :owner
  attr_reader :name 
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end 
end