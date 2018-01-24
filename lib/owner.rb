class Owner
  @@all = Array.new
  @@count = 0
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name, species = "human")
    @name = name
    @@all << self
    @@count += 1
    @species = species
    @pets = {
      cats: [],
      dogs: [],
      fishes: []
    }
  end

  #class methods
  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    self.all.clear
    @@count = 0
  end

  #instance methods
  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    @pets[:fishes] << fish = Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << cat = Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << dog = Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each {|pet| pet.mood = "nervous"}
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
