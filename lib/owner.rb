class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species)
    Owner.all << self
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
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
    pets[:dogs].map {|x| x.mood = "happy"}
    pets[:dogs]
  end

  def play_with_cats
    pets[:cats].map {|x| x.mood = "happy"}
    pets[:cats]
  end

  def feed_fish
    pets[:fishes].map {|x| x.mood = "happy"}
    pets[:fishes]
  end

  def sell_pets
    pets[:dogs].map {|x| x.mood = "nervous"}
    pets[:cats].map {|x| x.mood = "nervous"}
    pets[:fishes].map {|x| x.mood = "nervous"}
    pets[:dogs].clear
    pets[:cats].clear
    pets[:fishes].clear
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end
end
