class Owner
  attr_accessor :name, :pets
  attr_reader :species


  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
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
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end 

  def play_with_cats 
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end 

  def feed_fish 
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end 

  def sell_pets
    pets.each do |animal, name|
      name.each {|name| name.mood = "nervous"}
    end
    pets.clear
  end 

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end 
end
