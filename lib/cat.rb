class Cat

  attr_reader :name, :mood

def initialize(name)
  @name = name
end

def mood=(mood = "nervous")
  @mood = mood
end

def name=(name)
    raise NewNameError, "Can't change the cat's name to #{name}. Cat's name is set to #{@name}." if @name != name
end

end
