class Owner
  attr_accessor :pets
  attr_reader :species, :name
  @@all = []

  def initialize(species)
    @@all << self
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []} # All pets for owner instance
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
    return "I am a #{species}."
  end

  # Name new pets
  def name=(name)
    @name = name
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name) # Create new fish and add to owner's pets
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name) # Create new cat and add to owner's pets
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name) # Create new dog and add to owner's pets
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each {|type, pets| pets.each {|pet| pet.mood = "nervous"}}
    pets.clear
  end

  def list_pets
    fish_count = self.pets[:fishes].count
    dog_count = self.pets[:dogs].count
    cat_count = self.pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end