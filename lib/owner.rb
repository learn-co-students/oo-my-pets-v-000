class Owner
  @@all = []
  @@count = 0

  attr_accessor :name, :pets

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @@count +=1
    @pets = {:fishes=> [], :dogs=> [], :cats=> []}
  end

  def species
    @species
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all.clear
    @@count = 0
  end

  def say_species
   return "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
    fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
    cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
    dog
  end

  def walk_dogs
    self.pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].collect do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |key, array|
      array.each do |pet|
        pet.mood = "nervous"
      end
      array.clear
    end
  end

  def list_pets
    cats = self.pets[:cats].size
    dogs = self.pets[:dogs].size
    fish = self.pets[:fishes].size
    return "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end





end
