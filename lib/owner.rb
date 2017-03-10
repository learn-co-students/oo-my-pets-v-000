class Owner
  attr_accessor :pets, :name
   attr_reader :species
  @@all = []

  def initialize(name)
    @pets = {
      fishes: [], cats: [], dogs: []}
    @name = name
    @@all << self

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

  def species
    owner = 'human'
  end

  def say_species
    owner = 'I am a human.'
  end

  def buy_fish(name)  #uses the hash mentioned above
    pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)  #uses the hash mentioned above
    pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    pets[:dogs].each do |walk|
    walk.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |feed|
    feed.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |play|
    play.mood = "happy"
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

  def sell_pets
    pets.each do |species, animals|
    animals.each do |sell|
    sell.mood = "nervous"
    end
    animals.clear
    end
  end



end
