class Owner
  attr_reader :species
  attr_accessor :pets, :name
  @@all = []

  def initialize(species)
    @species = species

    @pets = {fishes: [], cats: [], dogs: []}
    
    save
  end

#CLASS METHODS

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

#INSTANCE METHODS

  def save
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish

  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each {|p| p.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|p| p.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|p| p.mood = "happy"}
  end

  def sell_pets
    pets[:dogs].each {|p| p.mood = "nervous"}
    pets[:cats].each {|p| p.mood = "nervous"}
    pets[:fishes].each {|p| p.mood = "nervous"}
    pets.clear
  end

  def list_pets
    dog_count = pets[:dogs].count
    fish_count = pets[:fishes].count
    cat_count = pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end