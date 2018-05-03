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
  @pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
  @pets[:cats] << Cat.new(name)
end

def buy_dog(name)
  @pets[:dogs] << Dog.new(name)
end

def walk_dogs
@pets[:dogs].collect {|dog| dog.mood = "happy"}
end

def play_with_cats
@pets[:cats].collect {|cat| cat.mood = "happy"}
end

def feed_fish
@pets[:fishes].collect {|fish| fish.mood = "happy"}
end

def sell_pets
  @pets[:dogs].collect {|dog| dog.mood = "nervous"}
  @pets[:cats].collect {|cat| cat.mood = "nervous"}
  @pets[:fishes].collect {|fish| fish.mood = "nervous"}
  @pets.clear
end

def list_pets
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
end

end
