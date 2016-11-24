class Owner
  @@owners = []
  attr_accessor :name, :pets
  attr_reader :species
  def initialize(name)
    @name = name
    @species = "human"
    @@owners << self
    @pets = {fishes: [], dogs: [], cats: []}
  end
  def self.all
    @@owners
  end
  def self.reset_all
    self.all.clear
  end
  def self.count
    self.all.count
  end
  def say_species
    "I am a #{self.species}."
  end
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  def walk_dogs
    pets[:dogs].each{|x| x.mood = "happy"}
  end
  def play_with_cats
    pets[:cats].each{|x| x.mood = "happy"}
  end
  def feed_fish
    pets[:fishes].each{|x| x.mood = "happy"}
  end

  def sell_pets
    pets.each do |k, v|
      v.each do |x|
        x.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
