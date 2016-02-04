class Owner

  attr_accessor :name, :pets
  attr_reader :species
  @@all =[]

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    self.all.length
  end

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    Owner.all << self
  end

  def say_species
    return "I am a #{self.species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |species, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end