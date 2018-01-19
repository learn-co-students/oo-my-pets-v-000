class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @name = name
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    f = Fish.new(fish)
    self.pets[:fishes] << f
  end

  def buy_cat(cat)
    c = Cat.new(cat)
    self.pets[:cats] << c
  end

  def buy_dog(dog)
    d = Dog.new(dog)
    self.pets[:dogs] << d
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
    self.pets.each do |type, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets = { :fish => [], :cats => [], :dogs => [] }
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
end
