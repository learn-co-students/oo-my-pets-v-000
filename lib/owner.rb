class Owner
  # code goes here
  @@all = []
  attr_accessor :pets, :name
  attr_reader :species

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    self.all.clear
  end

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
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
    @pets.each_pair do |pet_species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    return_string = "I have "
    return_string += @pets[:fishes].length.to_s
    return_string += " fish, "
    return_string += @pets[:dogs].length.to_s
    return_string += " dog(s), and "
    return_string += @pets[:cats].length.to_s
    return_string += " cat(s)."
  end
end
