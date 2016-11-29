class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name, species = "human")
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @species = species
    @@all << self
  end

  # CLASS METHODS
  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  # INSTANCE METHODS
  def species
    @species
  end

  def say_species
    "I am a human."
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
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |type, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    fish_count = @pets[:fishes].length
    dog_count = @pets[:dogs].length
    cat_count = @pets[:cats].length
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
