class Owner
  attr_accessor :name, :pets, :fish, :cats, :dog
  attr_reader :species

  @@count = 0
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @@count += 1
  end

  def say_species
    "I am a #{species}."
  end

  # will return all the name of the instances of the owner
  def self.all
    @@all
  end

  #Class method to count each new instance of the class
  def self.count
    @@count
  end

  # reset the count
  def self.reset_all
    @@count = 0
  end

  def buy_fish(name)
    name = Fish.new(name)
    @pets[:fishes] << name
  end

  def buy_cat(name)
    name = Cat.new(name)
    @pets[:cats] << name
  end

  def buy_dog(name)
    name = Dog.new(name)
    @pets[:dogs] << name
  end

  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end

  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each do |animal|
        animal.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end