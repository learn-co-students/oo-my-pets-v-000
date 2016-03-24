class Owner
  attr_accessor :name, :pets

  @@all = []

  def initialize(owner)
    @owner = owner
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    pets.each do |kind, list_of_pets|
      list_of_pets.each { |pet| pet.mood = "nervous" }
    end
    pets.clear
  end

  def list_pets
    str = ""
    str += "I have #{pets[:fishes].size} fish,"
    str += " #{pets[:dogs].size} dog(s),"
    str += " and #{pets[:cats].size} cat(s)."
    str
  end
end
