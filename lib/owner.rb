class Owner
  # code goes here
  attr_accessor :name, :pets, :dogs, :cats, :fishes
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    #Make a new instance of the appropriate pet, initializing it with that name.
    fish = Fish.new(name)
    #Associate that new pet instance to the owner by adding it to the appropriate array-value of the @pets hash stored in the pets attr_accessor.
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    dog = self.pets[:dogs][0]
    dog.mood = "happy"
  end

  def play_with_cats
    cat = self.pets[:cats][0]
    cat.mood = "happy"
  end

  def feed_fish
    fish = self.pets[:fishes][0]
    fish.mood = "happy"
  end

  def sell_pets
    self.pets.each do |pet, pet_info|
      pet_info.each do |pet_mood|
        pet_mood.mood = "nervous"
      end
      pet_info.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
end
