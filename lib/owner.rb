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
    @pets[:fishes] << @fish
    @fish.owner = self
  end

  def buy_cat(cat_name)
    @cat = Cat.new(cat_name)
    @pets[:cats] << @cat
    @cat.owner = self
  end

  def buy_dog(dog_name)
    @dog = Dog.new(dog_name)
    @pets[:dogs] << @dog
    @dog.owner = self
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
    @pets.each do |species, pets|
      @pets[species].each do |pet|
        pet.mood = "nervous"
      end

      @pets[species].clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end
