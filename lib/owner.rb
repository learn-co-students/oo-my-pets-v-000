class Owner

  attr_accessor :pets, :name, :mood

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
    @@all = []
  end

  def self.count
    self.all.size
  end

  def pets
    @pets
  end

  def species
    @species
  end

  def say_species
    p "I am a #{species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pet|
      pet.each do |pal|
        pal.mood = "nervous"
      end
    end
    @pets = {}
  end

  def list_pets
    p "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
