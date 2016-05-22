class Dog
  
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name_of_dog)
    @name = name_of_dog
    @mood = "nervous"
  end
  
end