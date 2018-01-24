class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@all << self
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

  def say_species
    "I am a #{self.species}."
  end

  def add_pet(pet, type)
    self.pets[type] << pet
  end

  def alter_pets_mood(mood, type)
    self.pets[type].each{|pet| pet.mood = mood}
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    self.add_pet(fish, :fishes)
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    self.add_pet(cat, :cats)
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    self.add_pet(dog, :dogs)
  end

  def walk_dogs
    # take the dogs for a walk
    self.alter_pets_mood("happy", :dogs)
  end

  def play_with_cats
    # playing with the cats
    self.alter_pets_mood("happy", :cats)
  end

  def feed_fish
    self.alter_pets_mood("happy", :fishes)
  end

  def sell_pets
    self.pets.values.flatten.each{|pet| pet.mood = "nervous"}
    self.pets.clear
  end

  def pet_count(type)
    self.pets[type].count
  end

  def list_pets
    "I have #{self.pet_count(:fishes)} fish, #{self.pet_count(:dogs)} dog(s), and #{self.pet_count(:cats)} cat(s)."
  end

end
