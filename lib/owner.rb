class Owner
  # code goes here

  attr_reader :species
  attr_accessor :name , :pets
  @@all = []
  @@count = 0


  def initialize(species)
  @species = species
  @@count +=1
  @@all << self
  @pets = {:fishes=>[],:cats=>[],:dogs=>[]}
  end

  def say_species
  return "I am a " + @species + "."
  end

  def buy_fish(name)
  fish = Fish.new(name)
  @pets[:fishes] << fish
  end

  def buy_cat(name)
  cat = Cat.new(name)
  @pets[:cats] << cat
  end

  def buy_dog(name)
  dog = Dog.new(name)
  @pets[:dogs] << dog
  end

  def self.all
    @@all
  end

  def walk_dogs
  self.pets[:dogs].collect do |dog| dog.mood="happy" end
  end

  def play_with_cats
  self.pets[:cats].collect do |cat| cat.mood="happy" end
  end

  def feed_fish
  self.pets[:fishes].collect do |fish| fish.mood="happy" end
  end

  def list_pets
  "I have " + self.pets[:fishes].count.to_s + " fish, " + self.pets[:dogs].count.to_s + " dog(s), and " + self.pets[:cats].count.to_s + " cat(s)."
  end

  def self.reset_all
  @@all = []
  @@count = 0
  end

  def sell_pets
  self.pets[:dogs].collect do |dog| dog.mood="nervous" end
  self.pets[:cats].collect do |cat| cat.mood="nervous" end
  self.pets[:fishes].collect do |fish| fish.mood="nervous" end
  self.pets[:dogs]=[]
  self.pets[:cats]=[]
  self.pets[:fishes]=[]
  end

  def self.count
    @@count
  end

end
