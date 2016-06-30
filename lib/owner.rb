class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def self.all
    @@all
  end

  def initialize(species)
    @species= species
    @pets= {fishes: [], cats: [], dogs: []}
    self.class.all << self
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
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
    @pets.each do |type, animals|
      animals.each {|animal| animal.mood = "nervous"}
      animals = animals.clear
    end
  end

  def list_pets
    return "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end 


end
