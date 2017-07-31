class Owner
  # Class Methods
  @@all = []
  def self.all
    @@all
  end
  def self.count
    @@all.size
  end
  def self.reset_all
    @@all = []
  end

  #Instance Methods
  attr_accessor :name, :pets
  attr_reader :species
  def initialize(species)
    @species = species
    @@all << self
    self.pets=({fishes: [], cats: [], dogs: []})
  end
  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    @new_fish = Fish.new(fish_name)
    @pets[:fishes] << @new_fish
    @pets
  end

  def buy_cat(cat_name)
    @new_cat = Cat.new(cat_name)
    @pets[:cats] << @new_cat
    @pets
  end

  def buy_dog(dog_name)
    @new_dog = Dog.new(dog_name)
    @pets[:dogs] << @new_dog
    @pets
  end

  def walk_dogs
    @pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end
  def play_with_cats
    @pets[:cats].collect do |cat|
      cat.mood = "happy"
    end
  end
  def feed_fish
    @pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def sell_pets
    @pets.map do |animal_type, pet_list|
      pet_list.map do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets=({fishes: [], cats: [], dogs: []})
  end

end
