class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []


  def initialize(species)
    @species = species
    @name = name
    @@all << self
    @pets = {
      :cats => [],
      :dogs => [],
      :fishes => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end
  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end
  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets[:cats].each {|pet| pet.mood = "nervous"}
    self.pets[:dogs].each {|pet| pet.mood = "nervous"}
    self.pets[:fishes].each {|pet| pet.mood = "nervous"}
    @pets = []
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
