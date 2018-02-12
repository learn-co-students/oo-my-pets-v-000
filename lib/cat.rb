class Cat
attr_accessor :mood
attr_reader :name
# attr_writer
   def initialize(name, mood = "nervous")
     @name = name
     @mood = mood
   end
end
