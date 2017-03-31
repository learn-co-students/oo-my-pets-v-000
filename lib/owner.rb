class Owner
  # code goes here
  attr_accessor :name, :pets


  @@all = []
  def initialize(owner)
    @species = owner
    @@all << self
    @pets = {:fishes => [], :cats => [], :dogs => []}
  end

  def self.reset_all
    self.all.clear
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def say_species
     "I am a #{self.species}."
  end

  def species
    @species.dup.freeze
  end

  def pets
    @pets.dup.freeze
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)

  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
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
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |key,value|
      value.each do |pet|
        pet.mood = "nervous"
      end
      value.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."

  end
end
