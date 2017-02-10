class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all =[]
  @@count = 0

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count +=1
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count=0
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish (fish_name)
    self.pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat (cat_name)
    self.pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog (dog_name)
    self.pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood="happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood="happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood="happy"}
  end

  def sell_pets
    @pets.each do |pet_collection, pet|
      pet.each {|each_pet| each_pet.mood= "nervous"}
      pet.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
