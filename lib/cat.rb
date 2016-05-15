class Cat

  attr_reader :name
  attr_accessor :mood

def initialize(name)
  @name = name
  @mood = "nervous"
end

def name=(name)
    raise NewNameError, "Can't change the cat's name to #{name}. Cat's name is set to #{@name}." if @name != name
end

end
