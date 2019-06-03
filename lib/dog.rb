class Dog

  attr_accessor :mood 
  attr_writer
  attr_reader :name, :count

def initialize(name, mood="nervous")
  @name = name 
  @mood = mood 
end 


end