class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

def initialize(name)
  @name = name
  @@owners << self
  @@all = []
  @pets = {fishes: [], cats: [], dogs: []}
end

def self.all
  @@owners
end

def self.reset_all
  @@owners.clear
  @@owners
end

def self.count
  @@owners.count
end

def pets
  @pets
end

def species
  if self
    @species = "human"
  end
end

def say_species
  if self.species == "human"
    return "I am a human."
  end
end

def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes][0] = fish
    fish.owner = self
end

def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats][0] = cat
    cat.owner = self
end

def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs][0] = dog
    dog.owner = self
end

def walk_dogs
  @pets[:dogs].each do |dog|
  dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].each do |cat|
  cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].each do |fish|
  fish.mood = "happy"
  end
end

def sell_pets
  owner.pets.each do
end
end

def list_pets
  "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
end

end
