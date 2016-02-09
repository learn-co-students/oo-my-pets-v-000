require 'pry'

class Owner

  attr_reader :species 
  attr_accessor :name, :pets

  @@all = []

##### Class Methods #####

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
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

#### Instance Methods ####

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.keys.sort.each do |animal|
      @pets[animal].each {|pet| pet.mood = "nervous"}
    end
    @pets.each{|key,value| value.clear}
  end

  def list_pets
    fish_quantity = @pets[:fishes].size
    cats_quantity = @pets[:cats].size
    dogs_quantity = @pets[:dogs].size
    "I have #{fish_quantity} fish, #{dogs_quantity} dog(s), and #{cats_quantity} cat(s)."
  end

end