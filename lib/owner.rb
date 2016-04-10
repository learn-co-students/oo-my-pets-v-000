require 'pry'
class Owner
  # code goes here
  attr_reader  :species
  attr_accessor :name, :pets


  @@all = []

#Initialize
  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
  end

  #Class Methods
  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  #Instance Methods
  def species
    @species = self.name
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
       @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
       @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
       @pets[:dogs] << Dog.new(name)
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
    @pets.each do |pet_type, pet|
        pet.each do |name|
          name.mood = "nervous"
        end
    end
    @pets.clear
  end

  def list_pets
    fish = @pets[:fishes].count
    cat = @pets[:cats].count
    dog = @pets[:dogs].count
    return "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
  end



end
