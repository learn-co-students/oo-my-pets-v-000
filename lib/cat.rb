class Cat
  attr_accessor :mood
  attr_reader :name 
  def initialize(name)
    @name = name 
    @mood = "nervous"
  end
  
  def buy_cat(name)
    new_cat = Cat.new 
    new_cat.name = name 
  end 
end