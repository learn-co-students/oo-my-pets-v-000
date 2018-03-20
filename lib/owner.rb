class Owner
  attr_accessor :name, :fish, :dog, :cat, :mood, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human" # placeholder
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def say_species
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.count
  end

  def pets
    @pets
  end

  def buy_fish(fish_name)
    @fish = Fish.new(fish_name)
    self.pets[:fishes] << @fish
    @fish.owner = self
  end

  def buy_cat(cat_name)
    @cat = Cat.new(cat_name)
    self.pets[:cats] << @cat
    @cat.owner = self
  end

  def buy_dog(dog_name)
    @dog = Dog.new(dog_name)
    self.pets[:dogs] << @dog
    @dog.owner = self
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
    self.pets.each do |species, pets|
      self.pets[species].each do |pet|
        pet.mood = "nervous"
      end

      self.pets[species].clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

end
