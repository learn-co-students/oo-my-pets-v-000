class Owner
  attr_accessor :owner, :cat, :dog, :fish, :fishes, :cats, :dogs, :pets
  attr_reader :species, :name

  @@all = []

  def initialize(owner)
    @owner = owner
    @species = owner
    @@all << self
    @pets = {cats:[], dogs:[], fishes:[]}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def self.species
    @species = species
  end

  def say_species
    "I am a #{self.species}."
  end

  def name=(name)
    @name=name
  end

  #def pets
  #  @pets = {:cats => [], :dogs => [], :fishes => []}
  #end

  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, animals|
		 animals.each do |animal|
		 	animal.mood = "nervous"
		 end
		 animals.clear
		end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
