class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.reset_all
    @@all = []
  end

  def self.all
    @@all
  end

  def self.count
    all.count
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fishname)
    fish = Fish.new(fishname)
    pets[:fishes] << fish
  end

  def buy_cat(catname)
    cat = Cat.new(catname)
    pets[:cats] << cat
  end

  def buy_dog(dogname)
    dog = Dog.new(dogname)
    pets[:dogs] << dog
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
    pets[:dogs].each {|x| x.mood = "nervous"}
    pets[:cats].each {|x| x.mood = "nervous"}
    pets[:fishes].each {|x| x.mood = "nervous"}
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{pets[:fishes].count.to_s} fish, #{pets[:dogs].count.to_s} dog(s), and #{pets[:cats].count.to_s} cat(s)."
  end

end