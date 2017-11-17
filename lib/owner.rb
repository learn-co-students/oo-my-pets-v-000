class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@owners = []

  def initialize(*p)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  def species
    @species
  end

  def say_species
    "I am a human."
  end

  def name
    @name
  end

  def pets
    @pets
  end

  def buy_fish(name)
     name = Fish.new(name)
     pets[:fishes] << name
    name
  end

  def buy_cat(name)
    name = Cat.new(name)
    pets[:cats] << name
    name
  end

  def buy_dog(name)
    name = Dog.new(name)
    pets[:dogs] << name
    name
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |species, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
      "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
