class Owner
  @@all = []
  attr_accessor :name, :pets

  def self.reset_all
    @@all.clear
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog= Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each {|e| e.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each {|e| e.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each {|e| e.mood = "happy" }
  end

  def sell_pets
    self.pets.each {|k, v| v.each { |pet| pet.mood = 'nervous' } }
    self.pets.each {|k, v| v.clear }
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end
