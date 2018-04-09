class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  def initialize(species = "human")
    @species = species
    @pets = {fishes: [], cats: [], dogs:[]}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    return "I am a #{species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog= Dog.new(dog_name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end


  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood= "happy"
    end
  end

  def sell_pets
    pets.each do |key, value|
      value.each do |pet|
        pet.mood= "nervous"
      end
      value.clear
    end
  end

  def list_pets
    return "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
