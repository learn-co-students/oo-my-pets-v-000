class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all.push(self)
  end

  def say_species
    "I am a #{self.species}."
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

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    self.pets[:fishes].push(fish)
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    self.pets[:cats].push(cat)
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    self.pets[:dogs].push(dog)
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    self.pets.each do |pet_type, pet_list|
      pet_list.each { |pet| pet.mood = "nervous" }
      pet_list.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
