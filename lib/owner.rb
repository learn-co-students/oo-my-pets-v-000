class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @species = "human"
    @name = name
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish (fish_name)
    self.pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat (cat_name)
    self.pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog (dog_name)
    self.pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood="happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood="happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood="happy"}
  end

  def sell_pets
    self.pets.each{|type, pets| pets.each{|pet| pet.mood="nervous"}}
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

end
