class Owner
  @@all = []
  attr_accessor :pets, :cat, :dog, :fish, :name
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].collect{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].collect{|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].collect{|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |species, animals|
      animals.collect{|animal| animal.mood = "nervous"}
      animals.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
