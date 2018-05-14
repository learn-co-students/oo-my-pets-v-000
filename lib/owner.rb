class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(pets)
    @pets = {
      :fishes => [],
      :cats => [],
      :dogs => []
    }
    @@all << self
    # @name = name
    @species = "human"
  end

  def self.species
    return "human"
  end

  def say_species
    return "I am a human."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
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
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end


end
