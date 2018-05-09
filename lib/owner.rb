require "pry"
class Owner
  @@all = []

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    #pets needs to be initialized as an attr and pets
    #isn't created in its own method
    @@all << self
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
    "I am a #{@species}." #expecting string without print or puts
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end

  def walk_dogs
    @pets[:dogs][0].mood = "happy"
    #mood is method but it is also a instance variable
  end

  def play_with_cats
    @pets[:cats][0].mood = "happy"
    #mood is method but it is also a instance variable
  end

  def feed_fish
    @pets[:fishes][0].mood = "happy"
    #mood is method but it is also a instance variable
  end

  def sell_pets
    @pets.each do |key,value|
      value.each do |seperate_animal|
        seperate_animal.mood = "nervous"
      end
      value.clear
    end
  end

  #z.chomp(loud) <- she was eating while tech coaching

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  # code goes here
end
