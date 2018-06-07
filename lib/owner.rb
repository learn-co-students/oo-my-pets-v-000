require "pry"

class Owner
  attr_accessor :name, :pets
  attr_reader :species
 OWNERS=[]
  def initialize(species)
    @species=species
    OWNERS << species
    @pets= {fishes: [], cats: [], dogs: []}
  end
  def self.all
    OWNERS
  end
  def species
    @species
  end
  def name=(name)
    @name=name
  end
  def name
    @name
  end
  def self.count
    OWNERS.size
  end
  def self.reset_all
  OWNERS.clear
  end
  def say_species
   "I am a #{@species}."
  end
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  def walk_dogs
    @pets[:dogs].each do |puppers|
      puppers.mood="happy"
    end
  end
    def play_with_cats
      @pets[:cats].each do |fuzzy_head|
        fuzzy_head.mood="happy"
      end
    end
    def feed_fish
      @pets[:fishes].each do |feesh|
        feesh.mood="happy"
      end
    end
    def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    end
    def sell_pets
      pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
    end
  end