class Owner
  attr_accessor :name
  attr_writer :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
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
    self.pets.each do |type, pets|
      pets.each {|pet| pet.mood = "nervous"}
      pets.clear
    end
  end

   def list_pets
     fishes = self.pets[:fishes].count
     dogs = self.pets[:dogs].count
     cats = self.pets[:cats].count
     "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
   end

 end
