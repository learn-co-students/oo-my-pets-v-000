class Dog
  attr_accessor :mood #can change its mood
  attr_reader :name #can't change its name 
  
  
  def initialize(name, mood="nervous")
    @name = name 
    @mood = mood
  end
  
  
end