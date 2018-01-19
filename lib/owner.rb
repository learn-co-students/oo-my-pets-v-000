class Owner
  # code goes here
 attr_reader :species
 attr_accessor :name, :pets

  @@all = []

  def initialize(species="human")
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    self.save
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each{|e|
      e.mood = "happy"
    }
  end

  def play_with_cats
    self.pets[:cats].each{|e|
      e.mood = "happy"
    }
  end

  def feed_fish
    self.pets[:fishes].each{|e|
      e.mood = "happy"
    }
  end

  def sell_pets
    self.pets.each{|t,ps|
      ps.each{|pet| pet.mood = "nervous"}
      ps.clear
    }
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

end
