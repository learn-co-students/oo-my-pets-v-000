class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  #Can buy pets
  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    dog
  end

  #Can change pets mood
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, pet|
      pet.each do |name|
        name.mood = "nervous"
      end
    end
    @pets.clear
    @pets
  end

  def list_pets
    cat_count = self.pets[:cats].size
    dog_count = self.pets[:dogs].size
    fish_count = self.pets[:fishes].size
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
  #Keeps track of all owners that have been created
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
