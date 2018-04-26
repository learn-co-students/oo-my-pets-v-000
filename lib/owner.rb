class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all=[]

  def initialize(species)
    @@all<<self
    @species=species
    @pets={:fishes=>[], :dogs=>[], :cats=>[]}
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@owner_count=0
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

  def sell_pets
    @pets.each do |species,animals|
      animals.each do |pet|
        pet.mood="nervous"
      end
      animals.clear
    end
  end

  def buy_fish(name)
    pets[:fishes]<<Fish.new(name)
  end

  def buy_cat(name)
    pets[:cats]<<Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs]<<Dog.new(name)
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

end
