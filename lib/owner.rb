class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize (species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{species}."
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
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
    @pets[:dogs].each {|x| x.mood = "happy"}
  end
  def play_with_cats
    @pets[:cats].each {|x| x.mood = "happy"}
  end
  def feed_fish
    @pets[:fishes].each {|x| x.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each {|x| x.mood = "nervous"}.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
