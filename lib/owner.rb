require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@owners = []

  def initialize(species)
    @@owners << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    return "I am a #{self.species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pet_mood(:dogs, "happy")
  end

  def play_with_cats
    self.pet_mood(:cats, "happy")
  end

  def feed_fish
    self.pet_mood(:fishes, "happy")
  end

  def pet_mood(pet, mood)
    @pets[pet].each{|pet| pet.mood = mood}
  end

  def sell_pets
      self.pets.keys.each do |pet|
        self.pet_mood(pet, "nervous")
        self.pets[pet].clear
      end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end

end
