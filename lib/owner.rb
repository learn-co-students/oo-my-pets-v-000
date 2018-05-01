require 'pry'
class Owner
  @@all = []
  @@counter = 0

  attr_accessor :name, :pets
  attr_reader :species
  def initialize(name)
    @name = name
    @@all << self
    @@counter =+ 1
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

    def self.count
      @@counter
    end

    def self.reset_all
      @@counter = 0
    end

    def species
      self.name
    end

    def say_species
      "I am a #{self.name}."
    end

    def pets
      @pets

    end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
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
    @pets.values.each do |valuess|
      valuess.each {|pet| pet.mood = "nervous"}
      end
      @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
