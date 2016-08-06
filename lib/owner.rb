class Owner

  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species, name="")
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    save_all
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each{|o| o.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each{|o| o.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each{|o| o.mood = "happy" }
  end

  def sell_pets
    @pets[:fishes].each{|o| o.mood = "nervous" }
    @pets[:cats].each{|o| o.mood = "nervous" }
    @pets[:dogs].each{|o| o.mood = "nervous" }
    @pets.clear
end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def self.count
    @@all.size
  end

  def save_all
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

end
