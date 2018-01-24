require 'pry'

class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []


  def initialize(name)
    # binding.pry
    @name = name
    @species = "human"
    @@owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.count
    @@owners.size
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def say_species
    "I am a human."
  end

  def buy_fish(fish)
    # binding.pry
    @newfish = Fish.new(fish)
    @pets[:fishes] << @newfish
    @pets
  end

  def buy_cat(cat)
    @newcat = Cat.new(cat)
    @pets[:cats] << @newcat
    @pets
  end

  def buy_dog(dog)
    @newdog = Dog.new(dog)
    @pets[:dogs] << @newdog
    @pets
  end

  def walk_dogs
    # binding.pry
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    # binding.pry
    @pets[:dogs].each {|dog| dog.mood = "nervous"}
    @pets[:cats].each {|cat| cat.mood = "nervous"}
    @pets[:fishes].each {|fish| fish.mood = "nervous"}
    @pets = {:dogs => [], :cats => [], :fishes => []}
  end

  def list_pets
    @values = []
    @values << @pets[:fishes].size
    @values << @pets[:dogs].size
    @values << @pets[:cats].size
    "I have #{@values[0]} fish, #{@values[1]} dog(s), and #{@values[2]} cat(s)."
  end









end
