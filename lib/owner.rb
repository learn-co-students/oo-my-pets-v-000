class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def pets
    @pets
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
    new_fish.owner = self
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
    new_cat.owner = self
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
    new_dog.owner = self
  end

  def walk_dogs
    self.pets[:dogs].map {|d| d.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].map {|c| c.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].map {|f| f.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, names|
      names.map {|p| p.mood = "nervous"}
    end
    self.pets.clear
  end

  def list_pets
    f = self.pets[:fishes].size
    d = self.pets[:dogs].size
    c = self.pets[:cats].size

    "I have #{f} fish, #{d} dog(s), and #{c} cat(s)."
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

end
