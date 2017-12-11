require 'pry'
class Owner
attr_accessor :pets, :name
attr_reader :species
@@all = []

  def initialize(pets)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    return "I am a #{self.species}."
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
    @pets[:dogs].each do |dog| dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat| cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish| fish.mood = "happy"
    end
  end

  def sell_pets
    @pets[:fishes].each {|fish| fish.mood = "nervous"}
      @pets[:cats].each {|cat| cat.mood = "nervous"}
        @pets[:dogs].each {|dog| dog.mood = "nervous"}
          @pets[:fishes] = []
          @pets[:cats] = []
          @pets[:dogs] = []
        end


  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
