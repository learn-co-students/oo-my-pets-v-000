

class Cat

  attr_accessor :mood
  attr_reader :name


  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end

end

#how to include the error if name is changed --
