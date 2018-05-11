class Owner
  @@owners = []
  attr_accessor :pets, :name
  attr_reader :species
  @@pets = {}
  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self

  end
  def self.all
    @@owners
  end
  def self.count
    self.all.count
  end
  def self.reset_all
    @@owners.clear
  end
  def say_species
    "I am a #{species}."
  end
  def pets
    @pets
  end
  def buy_fish(buy)
    fish = Fish.new(buy)
    pets[:fishes] << fish
  end
  def buy_dog(buy)
    dog = Dog.new(buy)
    pets[:dogs] << dog
  end
  def buy_cat(buy)
    cat = Cat.new(buy)
    pets[:cats] << cat
  end
  def walk_dogs
    pets[:dogs].map {|dog| dog.mood = 'happy'}
  end
  def play_with_cats
    pets[:cats].map {|cat| cat.mood = 'happy'}
  end
  def feed_fish
    pets[:fishes].map {|fish| fish.mood = 'happy'}
  end
  def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end
  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
end
