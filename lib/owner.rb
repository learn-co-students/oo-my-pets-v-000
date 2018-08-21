#owner.rb

class Owner
  attr_reader :species
  attr_accessor :name, :pets, :mood
  @@all = []

  def initialize (species, pets: 0)
    @species = species
    self.save #uses save method to keep track of owners created
    @pets = {fishes: [], cats: [], dogs: []}  #initialized w/ pets attribute as a hash with 3 keys
  end

  def save
    @@all << self
  end

  def self.all   #class reader exposes the value within the @@all array. (owners created)
    @@all
  end

  def self.count  #counts how many owners have been created
    @@all.count
  end

  def self.reset_all  #reset the owners that have been created
    @@all.clear
  end

  def say_species
    p "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets.each do |key, value|    #iterate over the pets hash for each key (species)
      value.each { |p| p.mood = "nervous" } #sets the mood for all values (pet instances) to 'nervous'
    end
    @pets.clear   #delete all pet instances for this owner
  end

  def list_pets
    p "I have #{(@pets[:fishes]).length} fish, #{(@pets[:dogs]).length} dog(s), and #{(@pets[:cats]).length} cat(s)."
  end
end
