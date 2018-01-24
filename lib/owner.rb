class Owner
  attr_reader :species
  attr_accessor :name, :pets

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

  def initialize (species)
    @species = species
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish (name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat (name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog (name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def sell_pets
    @pets.collect do |type, pet_array|
      pet_array.each { |pet| pet.mood = "nervous" }
      pet_array.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
