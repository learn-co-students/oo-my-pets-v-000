class Owner
  attr_accessor :name, :pets, :cats, :dogs, :fishes
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    da_fish = Fish.new(name)
    self.pets[:fishes] << da_fish
  end

  def buy_cat(name)
    da_cat = Cat.new(name)
    self.pets[:cats] << da_cat
  end

  def buy_dog(name)
    da_dog = Dog.new(name)
    self.pets[:dogs] << da_dog
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |pet_type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end

















