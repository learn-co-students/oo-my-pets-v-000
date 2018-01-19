require 'pry'

 class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    save
  end

### Class Operations ####
  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def save
    @@owners << self
  end

  def self.reset_all
    self.all.clear
  end

  ### Instance Methods ###

  def say_species
    "I am a #{self.species}."
  end

### Buy Pets ###
  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

### Change Pet Moods ###
  def change_mood(pet, new_mood)
    self.pets[pet].each do |pet|
      pet.mood = new_mood
    end
  end

  def walk_dogs
    change_mood(:dogs, "happy")
  end

  def play_with_cats
    change_mood(:cats, "happy")
  end

  def feed_fish
    change_mood(:fishes, "happy")
  end

### Other ###

  def sell_pets
    self.pets.each do |type, pet_type|
      #binding.pry
      change_mood(type, "nervous")
      pet_type.clear
    end
  end

  def list_pets
    dog_count = self.pets[:dogs].count
    cat_count = self.pets[:cats].count
    fish_count = self.pets[:fishes].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
