class Owner
  attr_accessor :pets
  attr_reader :species, :name
  @@all = []

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def name=(name)
    @name = name
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    dogs = @pets[:dogs]
    dogs.collect {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    cats = @pets[:cats]
    cats.collect {|cat| cat.mood = "happy"}
  end

  def feed_fish
    fishes = @pets[:fishes]
    fishes.collect {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.collect do |type, list|
      list.collect {|animal| animal.mood = "nervous"}
      list.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
    
end