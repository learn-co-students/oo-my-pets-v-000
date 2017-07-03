class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
  end

  def feed_fish
    pets[:fishes].collect {|fish| fish.mood = "happy"}
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end

  def play_with_cats
    pets[:cats].collect {|cat| cat.mood = "happy"}
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs].collect {|dog| dog.mood = "happy"}
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

  def sell_pets
    #change mood on all pets to "nervous"
    pets.each_pair do |key, pets_array|
      pets[key].each {|pet| pet.mood = "nervous"}
    end
    pets.clear
  end

  def self.reset_all
    all.clear
  end

  def self.count
    all.length
  end

end
