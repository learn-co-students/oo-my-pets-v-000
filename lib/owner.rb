class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    save
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}

  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].collect{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].collect{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].collect{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.collect do |all_pets, pet_groups|
      pet_groups.collect do |pets|
        pets.mood = "nervous"
      end
    end
    @pets = []
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end
