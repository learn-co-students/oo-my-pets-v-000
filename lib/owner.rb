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
    self.pets[:fishes] << new_fish
  end

  def feed_fish
    self.pets[:fishes].collect {|fish| fish.mood = "happy"}
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def play_with_cats
    self.pets[:cats].collect {|cat| cat.mood = "happy"}
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].collect {|dog| dog.mood = "happy"}
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

  def sell_pets
    #change mood on all pets to "nervous"
    self.pets.each_pair do |key, pets_array|
      self.pets[key].each {|pet| pet.mood = "nervous"}
    end
    self.pets.clear
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

end
