class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    save
  end

  def say_species
    "I am a #{@species}."
  end

  #buy fish
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  #buy cat
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  #buy dog
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  #walk dogs --> change dogs mood to happy
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  #play with cats --> change cats mood to happy
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  #feed fish --> change fishes mood to happy
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  #sells pets --> change pets mood to nervous
  def sell_pets
    @pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    @pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    @pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets.clear
  end

  #list pets
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    self.all.clear
  end
end
