class Owner

  attr_accessor :name, :pets
  attr_reader :species
  @@all = [] #class variable to track all owners

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
  end

#Class Methods
  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    self.all.clear
  end

  def self.species
    @species
  end

#Instance methods
  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    @pets[:fishes].push(Fish.new(name))
    #buy a fish, assoc new fish to Owner and add it to @pets hash
  end

  def buy_dog(name)
    @pets[:dogs].push(Dog.new(name))
    #buy a dog, assoc new dog to Owner and add it to @pets hash
  end

  def buy_cat(name)
    @pets[:cats].push(Cat.new(name))
    #buy a cat, assoc new cat to Owner and add it to @pets hash
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
    #owner walks dogs which makes them all happy
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each {|type, pets|
      pets.each {|pet| pet.mood = "nervous"}
    }
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
