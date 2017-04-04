class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def say_species
    return "I am a #{species}."
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
    self.pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    self.pets[:cats][0].mood = "happy"
  end

  def feed_fish
    self.pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    self.pets[:dogs].each do |dog|
      dog.mood = "nervous"
    end
    self.pets[:cats].each do |cat|
      cat.mood = "nervous"
    end
    self.pets[:fishes].each do |fish|
      fish.mood = "nervous"
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    fish_num = self.pets[:fishes].count
    dog_num = self.pets[:dogs].count
    cat_num = self.pets[:cats].count
    "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."
  end

end
