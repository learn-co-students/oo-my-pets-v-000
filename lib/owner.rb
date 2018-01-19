class Owner
attr_accessor :type, :name, :pets
attr_reader :species
attr_writer :mood

@@all = []
@@counter_dogs = 0
@@counter_cats = 0
@@counter_fish = 0

  def initialize(type)
    @type = type
    @@all << self
    @species = type
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
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
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
    @@counter_fish +=1
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
    @@counter_cats += 1
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
    @@counter_dogs +=1
  end

  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each { |cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each { |fish| fish.mood = "happy"}
  end

  def sell_pets
    pets[:dogs].each { |dog| dog.mood = "nervous"}
    pets[:cats].each { |cat| cat.mood = "nervous"}
    pets[:fishes].each { |fish| fish.mood = "nervous"}
    pets.each {|type, pets| pets.clear }
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
