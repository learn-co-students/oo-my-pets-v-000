class Owner
  attr_accessor :name, :owner, :pets, :fish, :cat, :dog
  attr_reader :species
  @@owner = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@owner << self
  end

  def self.all
    @@owner
  end

  def self.reset_all
    @@owner.clear
    @@owner.count
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a human."
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
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy" }
  end

  def sell_pets
    @pets.each do |animal, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    fishes = @pets[:fishes].count
    cats = @pets[:cats].count
    dogs = @pets[:dogs].count
    "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end


















