class Owner
  # code goes here

  attr_accessor :pets
  attr_reader :species, :name

  @@all = []

  def initialize(species)
    @species = species
    @pets =  {fishes: [], cats: [], dogs: []}
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

  def say_species
    "I am a #{self.species}."
  end

  def name=(name)
    @name = name
  end

  def buy_fish(pet_name)
    fish = Fish.new(pet_name)
    self.pets[:fishes] << fish
  end

  def buy_cat(pet_name)
    cat = Cat.new(pet_name)
    self.pets[:cats] << cat
  end

  def buy_dog(pet_name)
    dog = Dog.new(pet_name)
    self.pets[:dogs] << dog
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
    self.pets.each do |species, all_dogs|
        all_dogs.each do |pet|
          pet.mood = "nervous"
        end
    end
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
