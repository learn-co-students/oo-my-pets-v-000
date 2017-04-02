class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  # Class methods
  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
    self.count
  end

  def self.count
    self.all.count
  end

  def initialize(species)
    @species = species
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
    self.save
  end

  # Instance methods
  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(pet_name)
    fish = Fish.new(pet_name)
    self.pets[:fishes] << fish
  end

  def buy_dog(pet_name)
    dog = Dog.new(pet_name)
    self.pets[:dogs] << dog
  end

  def buy_cat(pet_name)
    cat = Cat.new(pet_name)
    self.pets[:cats] << cat
  end

  def feed_fish
    self.pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def walk_dogs
    self.pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.each{|type, pets| pets.clear}
  end

  def list_pets
    num_fish = self.pets[:fishes].count
    num_dogs = self.pets[:dogs].count
    num_cats = self.pets[:cats].count
    "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end
end
