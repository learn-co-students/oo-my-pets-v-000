class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def say_species
    "I am a human."
  end

  def self.reset_all
    self.all.clear
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
    @pets[:dogs].each {|n| n.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each {|n| n.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|n| n.mood = "happy"}
  end

  def sell_pets
    @pets.each do|pet_type, pets|
    pets.each {|name| name.mood = "nervous"}
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
