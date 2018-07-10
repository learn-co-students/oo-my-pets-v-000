class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def initialize(species)
    @species = species
    self.class.all<<self
    self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name)
    Fish.new(name).tap {|f| self.pets[:fishes]<<f}
    #pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    Cat.new(name).tap {|c| self.pets[:cats]<<c}
    #pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    Dog.new(name).tap {|d| self.pets[:dogs]<<d}
    #pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|f| f.mood = "happy"}
  end

  def sell_pets
    self.pets[:fishes].each {|f| f.mood = "nervous"}
    self.pets[:cats].each {|cat| cat.mood = "nervous"}
    self.pets[:dogs].each {|dog| dog.mood = "nervous"}
    self.pets[:fishes].clear
    self.pets[:dogs].clear
    self.pets[:cats].clear

    # pets.each do |species, animals|
    #   animals.each do |animal|
    #    animal.mood = "nervous"
    #  end
    #  animals.clear
    # end
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end
  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end
end
