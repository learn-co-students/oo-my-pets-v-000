class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@owners = []

  def initialize(species)
    self.class.all << self
    @species = species
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
  end

  def self.all
    @@owners
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.reset_all
    self.all.clear
  end

  ################## make pets ###########

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end



  ############ manipuate pets ##########

  def walk_dogs
    pets[:dogs].each {|i| i.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|i| i.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|i| i.mood = "happy"}
  end

  def sell_pets
    pets.each {|k, v| v.each {|i| i.mood = "nervous"}}
    pets.each {|k, v| v.clear}
  end

  def list_pets
    f = pets[:fishes].count
    d = pets[:dogs].count
    c = pets[:cats].count
    "I have #{f} fish, #{d} dog(s), and #{c} cat(s)."
  end
end
