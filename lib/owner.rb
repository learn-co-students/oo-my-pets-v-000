require 'pry'

class Owner
  attr_accessor :pets, :all, :name
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(pets)
    @pets = Hash[:fishes=> [],:cats=> [], :dogs=> []]
    @@all << self
    @@count += 1
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
    @@count = 0
  end

  def self.count
    @@count
  end

  def species
    @species = "human"
  end

  def say_species
    #binding.pry
    "I am a #{self.species}."
  end

  def name=(name)
    @name = name
  end

  def buy_fish(fish)
    #binding.pry
    fish = Fish.new(fish)
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
    self.pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    self.pets[:cats][0].mood = "happy"
  end

  def feed_fish
    self.pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    self.pets.collect do |k,v|
      v.collect do |k|
        k.mood = "nervous"
      end
    end
    @pets = Hash[:fishes=> [],:cats=> [], :dogs=> []]
  end

  def list_pets
    pet_count = self.pets.collect{|k,v| v.count}
    "I have #{pet_count[0]} fish, #{pet_count[2]} dog(s), and #{pet_count[1]} cat(s)."
  end

end
