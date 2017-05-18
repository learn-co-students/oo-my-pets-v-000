class Owner

  attr_accessor :owner, :pets, :name
  attr_reader :species
  #class variable to keep track all new owners
  @@all = []

  def initialize(owner)
    @owner = owner
    @species = "human"
    #pets variable set to pet hashes
    @pets = {fishes: [], cats: [], dogs: []}
    #class method to place new owners into array
    @@all << self
  end

  #returns all of the new owners
  def self.all
    @@all
  end

  #removes/resets the current owners from class variable @@all
  def self.reset_all
    @@all.clear
  end

  #counts the number of owners in @@all
  def self.count
    @@all.count
  end

  #instance metod that puts the current species
  def say_species
    "I am a #{@species}."
  end

  #returns name
  def name
    @name
  end

  #next few insance methods, pushes new pets into pets hash
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  #next few metods, for each pet that receives a walk, changes mood to happy
  def walk_dogs
    @pets[:dogs][0].mood=("happy")
  end

  def play_with_cats
    @pets[:cats][0].mood=("happy")
  end

  def feed_fish
    @pets[:fishes][0].mood=("happy")
  end

  #for each pet and mood, if about to be sold, set mood to nervous
  def sell_pets
    pets.each {|kind, moods|
      moods.each {|pets| pets.mood=("nervous")}
      moods.clear
    }
  end

  #lists the count of pets from the hases for each pet
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
