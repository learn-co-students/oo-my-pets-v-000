class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []
  
  def initialize(name)
    @pets = {fishes:[], cats:[], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
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
    pets.each do |type, pet_objects|
      pets[type] = []
      pet_objects.each do |animal|
        animal.mood = "nervous"
      end
    end
    pets
  end

  def list_pets
    fish_count = pets[:fishes].count
    dog_count = pets[:dogs].count
    cat_count = pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end