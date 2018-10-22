class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :cats => [], :dogs => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets.each do |type, pets|
      type == :dogs ? pets.each {|i| i.mood = "happy"} : nil
    end
  end

  def play_with_cats
    @pets.each do |type, pets|
      type == :cats ? pets.each {|i| i.mood = "happy"} : nil
    end
  end

  def feed_fish
    @pets.each do |type, pets|
      type == :fishes ? pets.each {|i| i.mood = "happy"} : nil
    end
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each {|i| i.mood = "nervous"}
    end
    @pets = {:fishes => [], :cats => [], :dogs => []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end
