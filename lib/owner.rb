class Owner
  
  attr_accessor :pets, :name, :dog, :mood
  attr_reader :species

  @@all = []

#///// CLASS METHODS /////

  def initialize(species)
    @species = species
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }

    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end


#///// INSTANCE METHODS /////

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    fish = Fish.new(fish)
    @pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    @pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    @pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.map do |species, pet|
      pet.each {|pet| pet.mood = "nervous"}
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)." 
  end















end