require 'pry'
class Owner

  attr_accessor :pets, :name, :owner
  attr_reader :species, :say_species

  @@all_owners = []

  def initialize(name)
    @name = name
    @species = "human"
    @owner = owner
    @@all_owners << self
    @pets = {fishes: [], cats: [], dogs:[]}
    @say_species = "I am a human."
  end

  def self.all
    @@all_owners
  end

  def self.reset_all
    @@all_owners = []
  end

  def self.count
    @@all_owners.size
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
    @pets[:dogs].each do |walk|
      walk.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |play|
      play.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |feed|
      feed.mood = "happy"
    end
  end

#looks like I need to return a new array
#then iterate over that array to change the mood
  def sell_pets
    @pets.each do |species, pets_list| #fishes, ["doug", "nemo"]
      pets_list.each do |pet|
        pet.mood = "nervous"
      end
      pets_list.clear
    end

  end

  def list_pets
    # binding.pry
      "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
