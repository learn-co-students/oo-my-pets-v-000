require 'pry'

class Owner
  attr_accessor :name, :owner, :pets
  @@owner_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @pets = {:fishes=>[], :dogs=>[], :cats=>[]}
    save
  end

  def self.all
    @@all
  end

  def save
    @@all<<self
  end

  def self.reset_all
    #  binding.pry
    # @@all = []
     @@all.clear
   end

  def species=(species)
    if !name.nil?
        message = "Species has already been assigned."
        raise RuntimeError.new(message)
      else
        @species = species
      end
  end

  def say_species
    "I am a human."
  end

  def name
    @name
  end

  def pets
    pets = {:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def mood
    @mood
  end

  def buy_fish(pet_name)
    Fish.new(pet_name)
    self.pets[:fishes].each do |fish|
      fish = Fish
    @@fishes+=1
  end
  end

  def buy_cat(pet_name)
    # self.buy_cat(pet_name)
  end

  def buy_dog(pet_name)
    # self.buy_dog(pet_name)
  end

  def walk_dogs
    dog.mood = "happy"
  end

  def play_with_cats
    cat.mood = "happy"
  end

  def feed_fish
    fish.mood = "happy"
  end

  def sell_pets
  end

  def list_pets
  end

end
