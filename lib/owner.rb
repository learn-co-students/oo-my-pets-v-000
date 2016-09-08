
class Owner
  attr_accessor :pets, :all, :name
  attr_reader :species
  @@all = []

  def initialize(pet_name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
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
    "I am a #{species}."
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    new_fish.owner = self
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    new_cat.owner = self
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    new_dog.owner = self
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |type, pet| 
      pet.each do |p| p.mood = "nervous"
      end
      @pets = {}
    end
  end

  def list_pets
     "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end