class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []

  def initialize(name)
    @name= name
    @@owners << self
    @species = species
    @pets = {fishes: [], dogs: [], cats: [] }
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end


  def pets
    @pets
  end

  def species
    if self
      @species = "human"
    end
  end

  def say_species
    if @species == "human"
      "I am a human."
    end
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes][0] = fish
    fish.owner = self
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats][0] = cat
    cat.owner = self
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs][0] = dog
    dog.owner =self
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets #loop through each pet to make them nervous then clear pets
      self.pets.each do |type, pets|
      pets.each do |pet|
      pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have 2 fish, 3 dog(s), and #{pets[:cats].count} cat(s)."
  end





end
