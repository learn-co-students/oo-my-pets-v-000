class Dog
attr_accessor :pets, :mood, :owner

def initialize(name, mood = "nervous")
@name = name
@mood = mood
end

def name
  @name
end
end
