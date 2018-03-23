class Dog
#   attr_accessor :gender, :mood
#   attr_reader :name, :species
#
#   @@all = []
#
#   def initialize(name)
#     @name = name
#     @mood = "nervous"
#     @@all << self
#   end
#
# end

attr_accessor :breed, :color, :gender, :mood, :dogs
attr_reader :name

@@all = []

def initialize(name)
  @name = name
  @mood = mood || "nervous"
  @dogs = []
  @@all << self
end

def dogs
  @dogs
end

def add_fish(name)
  @dogs << @name
end

end
