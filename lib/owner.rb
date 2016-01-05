class Owner
  attr_accessor :name, :cat, :dog, :fish, :pets
  attr_reader :species

  @@owners = []

#OWNER CLASS METHODS

  def self.count
    @@owners.count
  end

  def self.all
    @@owners
  end

  def self.reset_all
    self.all.clear
  end

#OWNER INSTANCE METHODS

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    self.class.all << self
  end

#ACTION METHODS

  def say_species
    "I am a #{@species}."
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
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each {|species, animals| animals.each {|pet| pet.mood = "nervous"}}
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end