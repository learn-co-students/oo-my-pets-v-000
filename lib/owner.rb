class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :owner, :species
  @@all = []

  def initialize(owner)
    @owner = owner
    @species = "human"
    @@all << self unless @@all.include?(self)
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
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
    self.pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
      pets.clear
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
