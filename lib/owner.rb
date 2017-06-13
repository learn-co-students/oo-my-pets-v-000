class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def feed_fish
    @pets[:fishes].collect{|fish| fish.mood = "happy"}
  end

  def list_pets
    return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

  def play_with_cats
    @pets[:cats].collect{|cat| cat.mood = "happy"}
  end

  def say_species
    "I am a #{@species}."
  end

  def sell_pets
    @pets.values.flatten.each {|pet| pet.mood = "nervous"}
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def walk_dogs
    @pets[:dogs].collect{|dog| dog.mood = "happy"}
  end


  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end



end
