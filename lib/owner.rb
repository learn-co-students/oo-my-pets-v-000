class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = 'human'
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each{|pet| pet.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|pet| pet.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|pet| pet.mood = "happy"}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end
end
