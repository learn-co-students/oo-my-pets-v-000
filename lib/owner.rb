class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name, species = "human")
    @name = name
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets.each do |species, pet|
      if species == :dogs
        pet.each do |x|
          x.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.each do |species, pet|
      if species == :cats
        pet.each do |x|
          x.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    @pets.each do |species, pet|
      if species == :fishes
        pet.each do |x|
          x.mood = "happy"
        end
      end
    end
  end

  def sell_pets
    @pets.each do |species, pet|
      pet.each do |x|
        x.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
