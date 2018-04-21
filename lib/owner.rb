class Owner

  @@all = Array.new

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@all << self
    @pets = { fishes:[], dogs:[], cats:[] }
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each { |pet| pet.mood = "nervous" }
      pets.clear
    end
  end

  def list_pets
    number_of_fish = @pets[:fishes].length
    number_of_dogs = @pets[:dogs].length
    number_of_cats = @pets[:cats].length
    "I have #{number_of_fish} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end
end
