
#####Class methods
#keeps track of the owners that have been created
#can reset the owners that have been created
#can count how many owners have been created
#can initialize an owner

#####instance methods
#####species
#initializes with a species
#can't change its species
#####say_species
#can say its species
#####name
#can have a name
#####pets
#is initialized with a pets attribute as a hash with 3 keys
#####buy_fish
#can buy a fish that is an instance of the Fish class                                                                             
#knows about its fishes
#####buy_cat
#can buy a cat that is an instance of the Cat class
#knows about its cats
#####buy_dog
#can buy a dog that is an instance of the Dog class
#####walk_dogs
#walks the dogs which makes the dogs' moods happy
#####play_with_cats
#plays with the cats which makes the cats moods happy
#####feed_fish
#feeds the fishes which makes the fishes' moods happy
#####sell_pets
#can sell all its pets, which make them nervous
#####list_pets
#can list off its pets

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :cats => [], :dogs => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

#Instance Methods

  def say_species
    "I am a human."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    self.pets.each { |species, pet| pet.each{ |pet| pet.mood = "nervous" }}
    self.pets.each { |species, pet| pets.clear }
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
