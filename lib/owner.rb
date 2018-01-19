class Owner

  attr_accessor :owner, :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
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
    @species = "I am a #{species}."
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
      @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
      @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
      @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |p, pet|
      pet.each do |a|
        a.mood = "nervous"
      end
      pet.clear
    end
  end

  def list_pets
    pet_count = self.pets.collect do |p, pet|
      pet.count
    end
    "I have #{pet_count[0]} fish, #{pet_count[2]} dog(s), and #{pet_count[1]} cat(s)."
  end
end
