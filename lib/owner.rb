class Owner
  attr_accessor :name, :pets

  @@all = []
  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def species
    @species.dup.freeze
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].collect{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].collect{|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].collect{|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each_value do |s|
      s.collect do |p|
        p.mood = "nervous"
      end
    end
    self.pets.clear
  end

  def list_pets
    self.pets[:fishes].length
      "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
    end

end
