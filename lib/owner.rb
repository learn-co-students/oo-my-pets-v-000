class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species,pets = {:fishes => [], :dogs => [], :cats => []})
    @species = species
    @name = name
    @pets = pets
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
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
    @pets.each do |type,pet_names|
      pet_names.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    owner_count = self.all.length
  end

  def self.reset_all
    self.all.clear
  end

end
