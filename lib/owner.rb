class Owner
  attr_accessor :name
  attr_reader :species, :pets
  # code goes here
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
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

  def pets=(pets)
    @pets = pets
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

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |key, value|
      value.each do |pet|
        pet.mood = "nervous"
      end
      value.clear
    end
  end

  def count_pets(type)
    pet_type = "#{type}".to_sym
    self.pets[pet_type].count
  end

  def list_pets
    fishes = count_pets("fishes")
    dogs = count_pets("dogs")
    cats = count_pets("cats")
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end
end
