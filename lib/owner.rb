class Owner
  # code goes here
  # An owner should know about its pets! Instances of the Owner class should be initialized with an @pets variable, set equal to the following hash: {fishes: [], cats: [], dogs: [}
  #An owner should be able to buy and sell pets, and therefore alter the @pets hash. You will therefore need a setter and a getter method (attr_accessor) for pets.
  #When an owner buys a new pet, the buy_cat/dog/fish method takes in an argument of a name. You must take that name and do the following:
      # Make a new instance of the appropriate pet, initializing it with that name.
      # Associate that new pet instance to the owner by adding it to the appropriate array-value of the @pets hash stored in the pets attr_accessor.
      # When an owner plays with a cat or feeds a fish or walks a dog, that pet will get happier. Remember that the pets method stores all of an owners pets. The @pets hash stored in that method is full of instances of the Cat/Dog/Fish class. That means you can call Cat/Dog/Fish instance methods (such as .mood=) on those pets.
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(name, species = "human")
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @name = name
    @species = species

    @@all << self
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
    # Owner instance methods buy_fish knows about its fishes
    # Owner instance methods buy_fish can buy a fish that is an instance of the Fish class
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
    # Owner instance methods buy_cat knows about its cats
    # Owner instance methods buy_cat can buy a cat that is an instance of the Cat class
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
    # Owner instance methods buy_dog knows about its dogs
    # Owner instance methods buy_dog can buy a dog that is an instance of the Dog class
  end

  def self.all
    @@all
  end

  def self.reset_all #name correct
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def feed_fish
    self.pets[:fishes].each{ |fish| fish.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{ |cat| cat.mood = "happy"}
  end

  def walk_dogs
    self.pets[:dogs].each{ |dog| dog.mood = "happy"}
  end

  def say_species
    "I am a #{species}."
  end

  def sell_pets
    self.pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end

      pets.clear
    end
  end

  def list_pets 
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
