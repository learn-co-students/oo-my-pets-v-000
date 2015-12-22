class Dog
  #have an attrib writer and reader via the accessor method. :name is a setter and getter for instance
  #var mood for each dog obj inititalized 
  attr_accessor :mood
  attr_reader :name 
#using attrib reader for name because don't want dog objects able to change their name 

  def initialize(name, mood = "nervous")
    @name=name
    @mood = mood 
  end
end