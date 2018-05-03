class Owner

  attr_accessor :name, :pets, :say_species, :buy_fish, :buy_cat, :buy_dog,
  :walk_dogs, :play_with_cats, :feed_fish, :sell_pets, :list_pets
  attr_reader :species

@@all = []

  def initialize(name)
    @name = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

def self.all
  @@all
end

def self.reset_all
  @@all.clear
end

def self.count
  @@all.length
end

def say_species
"I am a human."
end

def buy_fish(name)
  @pets[:fishes] = Fish.new(name)
end

def buy_cat(name)
end

def buy_dog(name)
end

def walk_dogs
end

def play_with_cats
end

def feed_fish
end

def sell_pets
end

def list_pets
end

end
