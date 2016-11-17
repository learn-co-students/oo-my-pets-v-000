class Owner

  @@all = []

  attr_accessor :name, :pets
  attr_reader   :species

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def feed_fish
    make_happy(@pets[:fishes])
  end

  def play_with_cats
    make_happy(@pets[:cats])
  end

  def walk_dogs
    make_happy(@pets[:dogs])
  end

  def make_happy(pet_array)
    pet_array.each { |pet| pet.mood = 'happy' }
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

  def sell_pets
    @pets.each_value { |pet_array|
      pet_array.each { |pet| pet.mood = 'nervous' }
      pet_array.clear
    }
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

end
