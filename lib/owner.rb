class Owner
  attr_accessor :name, :pets
  attr_reader :species 
  @@all = []
  

  def initialize(name = nil, pets = nil, species = nil)
    @name = name
    @species = "human"  
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self 
  end# of initialize

  def self.count
    @@all.length
  end#of self.count


  def self.all 
    @@all 
  end# of self.all


  def self.reset_all
    @@all.clear
  end# of self.reset_all


  def say_species
    "I am a #{@species}."
  end# of species


  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes].push(fish)
  end# of buy_fish


  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats].push(cat)
  end# of buy_cat


  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs].push(dog)
  end# of buy_dog


  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end# of do
  end# of walk_dogs


  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end# of do
  end# of play_with_cats


  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end# of do
  end# of feed_fish


  def sell_pets
    @pets.each do |type, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
      end# of do |pet|
    end# of do |type
    @pets.clear 
  end# of sell_pets


  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end# of list_pets

  
end