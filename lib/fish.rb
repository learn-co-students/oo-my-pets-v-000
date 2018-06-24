class Fish
  # code goes here
  attr_accessor :mood
  attr_reader :name
  def initialize(name)
    @name = name
    @mood = "nervous" #could use self.mood = "nervous"
  end  
end