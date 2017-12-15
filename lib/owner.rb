class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    self.pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].collect {|d| d.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].collect {|c| c.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].collect {|f| f.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |type, pet|
      pet.each {|p| p.mood = "nervous"}
      pet.clear
    end
  end

  def list_pets
    p = self.pets.values
    "I have #{p[0].length} fish, #{p[1].length} dog(s), and #{p[2].length} cat(s)."
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end
end
