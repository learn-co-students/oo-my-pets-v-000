class Owner
  # code goes here
  attr_accessor :name, :pets
  @@all = []
  @@all_count = 0

  def initialize(name)
    @name = name
    @@all << self
    @@all_count += 1
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
    @@all_count = 0
  end

  def self.count
    @@all_count
  end

  def species
    "human"
  end

  def say_species
    "I am a #{species}."
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
    dogs.each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    cats = @pets[:cats]
    cats.each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    fishes = @pets[:fishes]
    fishes.each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each {|key, val| val.each {|pet| pet.mood = "nervous"}}
    pets.each {|key, val| val.clear}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end