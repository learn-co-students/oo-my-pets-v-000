class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @species = "human"
    @name = name
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def self.count
    @@all.count
  end

  def pets_hash
    if @new_pet.class == Fish
      @pets[:fishes] << @new_pet
    elsif @new_pet.class == Cat
      @pets[:cats] << @new_pet
    elsif @new_pet.class == Dog
      @pets[:dogs] << @new_pet
    end
    @pets
  end

  def buy_fish(name)
    @new_pet = Fish.new(name)
    pets_hash
  end

  def buy_cat(name)
    @new_pet = Cat.new(name)
    pets_hash
  end

  def buy_dog(name)
    @new_pet = Dog.new(name)
    pets_hash
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |category, array|
      array.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end


end
