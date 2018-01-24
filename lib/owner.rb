class Owner
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@all << self
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats =>[]
    }
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
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.map do |type, owners_pet|
      owners_pet.map do |pet|
        pet.mood = "nervous"
      end
    end

    self.pets[:cats].clear
    self.pets[:dogs].clear
    self.pets[:fishes].clear

  end

  def list_pets
    cats = self.pets[:cats].count
    dogs = self.pets[:dogs].count
    fishes = self.pets[:fishes].count

    return "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."

  end

end
