class Owner

  attr_accessor :name, :pets, :cat, :dog, :fish, :mood
  attr_reader :species

  @@all = []

def initialize(name)
  @name = name
  @@all << self
  @pets = {fishes: [], cats: [], dogs: []}
end

def species(species = "human")
  @species = species
end

def say_species
   "I am a #{species}."
end

def buy_fish(name)
  f = Fish.new(name)
  @pets[:fishes] << f
  f.owner = self

end

def buy_cat(name)
  c = Cat.new(name)
  @pets[:cats] << c
  c.owner = self
end

def buy_dog(name)
  d = Dog.new(name)
  @pets[:dogs] << d
  # d.owner = self
end
def walk_dogs
    array = @pets[:dogs]
    array.collect {|dog| dog.mood = "happy"}
end

def play_with_cats
    array = @pets[:cats]
    array.collect {|cat| cat.mood = "happy"}
end

def feed_fish
    array = @pets[:fishes]
    array.collect {|fish| fish.mood = "happy"}
end

def sell_pets

  array = @pets[:fishes]
  array.collect {|fish| fish.mood = "nervous"}
  array = @pets[:cats]
  array.collect {|cat| cat.mood = "nervous"}
  array = @pets[:dogs]
  array.collect {|dog| dog.mood = "nervous"}
  @pets.clear
  end
def list_pets
    dog_arr = @pets[:dogs]
    cat_arr = @pets[:cats]
    fish_arr = @pets[:fishes]
    dog_count = dog_arr.length
    cat_count = cat_arr.length
    fish_count = fish_arr.length
  # "I have 2 fish, 3 dog(s), and 1 cat(s)."
 "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  # @pets.each_pair.collect {|key, value|
end

def self.all
  @@all
end

def self.count
@@all.length
end

def self.reset_all
  @@all = []
end
end
