class Owner
  attr_reader :species
  attr_writer :pets
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def pets
    @pets.dup.freeze
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    self.pets[:cats] << cat
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    self.pets[:fishes] << fish
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    self.pets[:dogs] << dog
  end

  def play_with_cats
    self.pets[:cats].collect {|cat| cat.mood = "happy"}
  end

  def walk_dogs
    self.pets[:dogs].collect {|dog| dog.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].collect {|fish| fish.mood = "happy"}
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

  def say_species
    "I am a #{self.species}."
  end

  def sell_pets
    self.pets.collect do |key, pets_array|
      pets_array.delete_if {|pet| pet.mood = "nervous"}
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end
end
