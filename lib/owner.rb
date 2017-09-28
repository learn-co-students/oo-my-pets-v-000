class Owner
  # code goes here
  attr_accessor :name, :pets
  @@count = 0
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @@count += 1
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
    @@all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    @pets[:fishes]
  end

  def buy_dog(name)
    dog=Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_cat(name)
    cat=Cat.new(name)
    @pets[:cats] << cat
  end

  def walk_dogs
    @pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].collect do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |key, values|
      values.collect do |pet|
        pet.mood = "nervous"
      end
      values.clear
    end
  end

  def list_pets
    @pets[:fishes].count
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
