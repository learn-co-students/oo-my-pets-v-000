class Owner
  attr_reader :species 
  attr_accessor :pets, :name
  
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def name
    @name
  end

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

  def play_with_cats
    self.pets[:cats].each {|cat| cat.happy}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.happy}
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.happy}
  end

  def sell_pets
    self.pets[:cats].each {|cat| cat.nervous}
    self.pets[:fishes].each {|fish| fish.nervous}
    self.pets[:dogs].each {|dog| dog.nervous}
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end