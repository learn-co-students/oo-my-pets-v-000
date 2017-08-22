class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = { fishes: [], dogs: [], cats: [] }
    @species = "human"
  end

  def self.all #returns @@all
    @@all
  end

  def self.count #counts owners
    self.all.size
  end

  def self.reset_all #clears owners
    self.all.clear
  end

  # **** Instance Methods ****
  def species #initialize a species
    @species
  end

  def say_species #can say its species
    "I am a #{@species}."
  end

  def pets #intialized with a pets attribute as a hash w/ 3 keys
    @pets
  end

  def buy_fish(name) # buy an instance of the fish class, know about its fishes
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name) # buy an instance of the cat class, know about its cats
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name) # buy an instance of the dog class, know about its dogs
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs #walks the dogs, changing their moods to happy
    @pets[:dogs].each { |d| d.mood = "happy" }
  end

  def play_with_cats #play with cats, changing their moods to happy
    @pets[:cats].each { |c| c.mood = "happy" }
  end

  def feed_fish #feeds the fish, changing their moods to happy
    @pets[:fishes].each { |f| f.mood = "happy" }
  end

  def sell_pets #sells all pets, making them nervous
    @pets.each { |key, value| value.each {|pet| pet.mood = "nervous"} }
    @pets.each_value { |value| value.clear }
  end

  def list_pets #lists all pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end
