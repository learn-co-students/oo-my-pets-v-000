class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def new_pet(type, name)
    @pets[type] << name
    name.owner = self
  end

  def buy_cat(name)
    name = Cat.new(name)
    new_pet(:cats, name)
  end

  def buy_dog(name)
    name = Dog.new(name)
    new_pet(:dogs, name)
  end

  def buy_fish(name)
    name = Fish.new(name)
    new_pet(:fishes, name)
  end

  def say_species
    "I am a #{@species}."
  end

  def walk_dogs
    @pets[:dogs].each{|pet| pet.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|pet| pet.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|pet| pet.mood = "happy"}
  end

  def sell_pets
    @pets.each{|type, pet| @pets[type].each{|pet| pet.mood = "nervous"}
      @pets[type].clear}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
