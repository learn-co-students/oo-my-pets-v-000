class Cat
  
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name_of_cat)
    @name = name_of_cat
    @mood = "nervous"
  end
  
end