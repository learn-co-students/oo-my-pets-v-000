class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    self.pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def feed_fish
    fishes = self.pets[:fishes]
    fishes.each { |fish| fish.mood = "happy" }
  end

  def list_pets
    fish_count = self.pets[:fishes].length
    dog_count = self.pets[:dogs].length
    cat_count = self.pets[:cats].length
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

  def play_with_cats
    cats = self.pets[:cats]
    cats.each { |cat| cat.mood = "happy" }
  end

  def say_species
    species = self.species
    "I am a #{species}."
  end

  def sell_pets
    pets = self.pets
    pets.each do |key, array|
      array.each { |pet| pet.mood = "nervous" }
    end
    self.pets.clear
  end

  def walk_dogs
    dogs = self.pets[:dogs]
    dogs.each { |dog| dog.mood = "happy" }
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

end
