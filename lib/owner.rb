class Owner
  # code goes here
  attr_reader :species
  attr_accessor :pets
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
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

  def say_species
    "I am a #{@species}."
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def pets
    @pets
  end

  def buy_fish(name)
    #new_fish =
  #  binding.pry
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |species, array|
      pets[species].each {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end

  def list_pets
    pet_count = []
    pets.each do |species, array|
      pet_count << pets[species].count
    end
    "I have #{pet_count[0]} fish, #{pet_count[1]} dog(s), and #{pet_count[2]} cat(s)."
  end

end
