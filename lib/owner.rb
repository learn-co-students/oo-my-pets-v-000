class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    self.name = name
    self.pets = {cats: [], dogs: [], fishes: []}
    @species = "human"
    @@all << self
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def feed_fish
    self.pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def walk_dogs
    self.pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |keys, pets| 
      pets.each { |pet| pet.mood = "nervous"}
    end    
    self.pets = {cats: [], dogs: [], fishes: []}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end


  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end
end