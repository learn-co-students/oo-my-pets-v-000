require 'pry'
class Owner
  attr_accessor :owners, :pets, :name, :mood


  @@owners = []

  def initialize(human)
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@owners << self

  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.count
  end

  #1) Owner instance methods #species initializes with a species
    #Failure/Error: expect(owner.species).to eq("human")

  def species
    "human"
  end

  #1) Owner instance methods #say_species  can say its species
     #Failure/Error: expect(owner.say_species).to eq("I am a human.")

  def say_species
    "I am a human."
  end

  #1) Owner instance methods #buy_fish can buy a fish that is an instance of the Fish class
     #Failure/Error: owner.buy_fish("Bubbles")

  def buy_fish(name)
    # name == "Bubbles"
    new_fish = Fish.new(name)
    # new_fish = Fish.new("Bubbles")
    @pets[:fishes] << new_fish
  end

  #1) Owner instance methods #buy_cat can buy a cat that is an instance of the Cat class
     #Failure/Error: owner.buy_cat("Crookshanks")
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  #Owner instance methods #buy_dog can buy a dog that is an instance of the Dog class
     #Failure/Error: owner.buy_dog("Snuffles")
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  #1) Owner instance methods #walk_dogs walks the dogs which makes the dogs' moods happy
    #Failure/Error: owner.walk_dogs
  def walk_dogs
      @pets[:dogs].each do |dog|
        dog.mood = "happy"
      end
  end

  #1) Owner instance methods #play_with_cats plays with the cats which makes the cats moods happy
    #Failure/Error: owner.play_with_cats

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  #1) Owner instance methods #feed_fish feeds the fishes which makes the fishes' moods happy
     #Failure/Error: owner.feed_fish

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  #1) Owner instance methods #sell_pets can sell all its pets, which make them nervous
     #Failure/Error: owner.sell_pets

  def sell_pets
    @pets.each do |item, index|
      index.each do |pet|
        pet.mood = "nervous"
      end
    end
  @pets.clear
  end

  #1) Owner instance methods #list_pets can list off its pets
       #Failure/Error: expect(owner.list_pets).to eq("I have 2 fish, 3 dog(s), and 1 cat(s).")

  def list_pets
   "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
