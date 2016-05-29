class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  #Class Methods
  def initialize(species)
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  def self.all
    @@all
  end
  def self.reset_all
    self.all.clear
  end
  def self.count
    self.all.size
  end
  #instance methods
  def say_species
    "I am a #{self.species}."
  end
  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end
  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end
  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end
  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  def sell_pets
    self.pets.each_value do |pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end
  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end
