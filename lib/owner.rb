require 'pry'
class Owner
  # code goes here
  @@all = []
  @@count = 0

  def self.all
    @@all
  end

  attr_accessor :species, :name, :pets

  def initialize(species)
    @species = species
    @@all << self # self is like Cat.new, instantiated
    @@count+=1
    @pets = {:fishes =>[], :dogs => [], :cats => []}
  end

  def species=(new_species)
    raise ChangeNameError if new_species != species
    @species = new_species
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def self.count
    @@count
  end

  def say_species
    "I am a #{species}."
  end

  def name=(owner_name)
    @name = owner_name
  end

  def buy_fish(new_fish_name)
    #need to find a way to link an instance, or an object, of the Fish class
    new_fish = Fish.new(new_fish_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(new_cat_name)
    new_cat = Cat.new(new_cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(new_dog_name)
    new_dog = Dog.new(new_dog_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].select do |pet|
      pet.mood = 'happy'
    end
  end

  def play_with_cats
    @pets[:cats].select do |pet|
      pet.mood = 'happy'
    end
  end

  def feed_fish
    @pets[:fishes].select do |pet|
      pet.mood = 'happy'
    end
  end


end
