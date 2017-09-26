class Owner
  attr_accessor :name, :pets
  attr_reader :species, :all
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a human."
  end

  def self.reset_all
    @@all.clear
  end

  def buy_fish(fish)
    @fish = Fish.new(fish)
    self.pets[:fishes] << @fish
  end

  def buy_dog(dog)
    @dog = Dog.new(dog)
    self.pets[:dogs] << @dog
  end

  def buy_cat(cat)
    @cat = Cat.new(cat)
    self.pets[:cats] << @cat
  end

  def walk_dogs
    self.pets[:dogs].each do |d|
      d.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |c|
      c.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |f|
      f.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |n|
        n.mood = "nervous"
      end
    end
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
end
