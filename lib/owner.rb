class Owner

  ## I'm commenting out the code listed in this Ruby document
  ## to better explain and detail out my test-driven methods.

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species = "human")
    @name = name
    @species = species
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
  end

  ## Refers to the class itself
  ## and the items in the array.

  def self.all
    @@all
  end

  ## Refers to the class itself
  ## and resets the items listed in the @@all array.

  def self.reset_all
    @@all.clear
  end

  ## Refers to the class itself and
  ## count's the items inside the @@all array.

  def self.count
    @@all.count
  end

  ## Makes the owner state his species.

  def say_species
    "I am a human."
  end

  ## Calls the name of the pet.

  def name
    @name
  end

  ## Lists the @pets hash.

  def pets
    @pets 
  end

  ## Purchases the pets.

  def buy_fish(fish)
    fish = Fish.new(fish)
    pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    pets[:dogs] << dog
  end

  ## Makes the animals happy if 
  ## when taken on a walk, played with, or fed.

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  ## Changes the animals' mood to nervous when 
  ## the owner goes to sell them.

  def sell_pets
    @pets.each do |type, pet|
      pet.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  ## Lists the amounts and types of pets. 

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end








