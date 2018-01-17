class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    self.species = species
    self.pets = {:fishes => [], :dogs => [], :cats => []}

    self.class.all << self
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, " +
      "#{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def sell_pets
    pets.each do |species, pets_of_species|
      pets_of_species.each {|pet| pet.mood = "nervous"}
      pets_of_species.clear
    end
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    self.all.size
  end

  def self.reset_all
    self.all.clear
  end

  private

  def species=(species)
    @species = species
  end

end
