class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    self.pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all =[]
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish_name)
    self.pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    self.pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    self.pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    self.pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |pet_kind, pet_array|
      pet_array.map do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = []
  end

  def list_pets
    quantity  = []
    self.pets.values.map do |v|
      quantity << v.size
    end
    "I have #{quantity[0]} fish, #{quantity[1]} dog(s), and #{quantity[2]} cat(s)."
  end


end
