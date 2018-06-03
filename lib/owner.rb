class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@owners = []
  def initialize(name, species = "human")
    @name = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @species = species
    @@owners << self
  end
  # code goes here

  def self.count
    @@owners.length
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners = []
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].map { |d| d.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].map { |c| c.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].map { |f| f.mood = "happy" }
  end

  def sell_pets
    @pets.map do |species, pet|
      @pets[species].map do |pe|
        pe.mood = "nervous"
      end
      @pets[species] = []
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
