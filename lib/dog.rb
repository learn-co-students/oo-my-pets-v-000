class Dog
    attr_accessor :mood
    attr_reader :name
    
  def initialize(name)
    @name = name 
    @mood = "nervous"
  end 

  def buy_dog(name)
    new_dog = Dog.new 
    new_dog.name = name 
  end 
end