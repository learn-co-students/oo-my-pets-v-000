class Owner
  # code goes here
  @@all = []
  attr_accessor :owner, :pets
  attr_reader :species
  attr_writer :name
  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def self.all
    @@all
  end

  def initialize(owner)
    @owner = owner
    @@all << self
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def say_species
    return "I am a #{@species}."
  end
  def name
    @name
  end
  def buy_fish(fish_name)
    pets[:fishes] << Fish.new(fish_name)
  end
  def buy_cat(cat_name)
    pets[:cats] << Cat.new(cat_name)
  end
  def buy_dog(dog_name)
    pets[:dogs] << Dog.new(dog_name)
  end
  def walk_dogs
    pets[:dogs][0].mood = "happy"
  end
  def play_with_cats
    pets[:cats][0].mood = "happy"
  end
  def feed_fish
    pets[:fishes][0].mood = "happy"
  end
  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end
  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
end
