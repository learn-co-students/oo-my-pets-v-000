class Cat
   
  attr_accessor :mood
  attr_reader :name 
  
  def initialize(name="mr. whiskers", mood="nervous")
     @name = name
     @mood = mood
   end
end