class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  #instance methods

  def say_species
    "I am a human."
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats].push(cat)
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs].push(dog)
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes].push(fish)
  end

  def walk_dogs
    self.pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    self.pets[:cats][0].mood = "happy"
  end

  def feed_fish
    self.pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    self.pets.each_key do |pet_hash|
      self.pets[pet_hash].each do |pet|
        pet.mood = "nervous"
      end
      self.pets[pet_hash].clear
    end
  end

  def list_pets
    num_fish = self.pets[:fishes].count
    num_cats = self.pets[:cats].count
    num_dogs = self.pets[:dogs].count
    "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end

  # class methods

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

end
