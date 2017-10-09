class Owner
  attr_accessor :name, :pets
  attr_reader :owner

  @@all = []

  def initialize(owner)
    @owner = owner
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  def species
    self.owner
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    # Retrieve all of the dogs in the pets hash
    # Iterate over each value of the :dogs key and change the mood to happy
    self.pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    self.pets.each_value do |pets_array|
      pets_array.each do |pets|
        pets.mood = "nervous"
      end
      pets_array.clear
    end
  end

  def list_pets
    total_fish = self.pets[:fishes].length
    total_cats = self.pets[:cats].length
    total_dogs = self.pets[:dogs].length
    "I have #{total_fish} fish, #{total_dogs} dog(s), and #{total_cats} cat(s)."
  end

end
