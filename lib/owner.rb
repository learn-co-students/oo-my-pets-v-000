class Owner

  @@all = []
  attr_accessor :pets, :name
  attr_reader :species
  def initialize(species)
    @@all << self
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def say_species
    "I am a #{@species}."
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

  def self.count
    @@all.length
  end

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
    @pets[:dogs].clear
    @pets[:cats].clear
    @pets[:fishes].clear
  end

  def list_pets
    fish = @pets[:fishes].length
    dog = @pets[:dogs].length
    cat = @pets[:cats].length
    "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  # code goes here
end
