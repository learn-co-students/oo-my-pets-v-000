class Owner
  @@all = [] # keeps track of all Owners

  attr_accessor :name, :pets
  attr_reader :species


  def initialize(owner_species)
    @species = owner_species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
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
    @pets.each do |pet_type, pet_list|
      pet_list.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end
end
