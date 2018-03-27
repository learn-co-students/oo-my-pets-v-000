class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}

    @@all << self
  end

  def self.count
    @@all.count
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a human."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    @pets
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    @pets
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    @pets
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do | species, pets |
        pets.each do | pet |
          pet.mood = "nervous"
        end
     pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
