require 'pry'
class Owner
  attr_accessor :owner, :name, :pets
  attr_reader :species

  @@all = []

  #@pets = {:fishes => [], :dogs => [], :cats => []}

  def initialize(owner)
    @owner = owner
  #  @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def species
    @species = "human"
  end

  def say_species
   "I am a #{species}."
  end

  def buy_fish(fish)

    pets[:fishes].push(Fish.new(fish))
    pets
  end

  def buy_cat(cat)
    pets[:cats].push(Cat.new(cat))
  end

  def buy_dog(dog)
    pets[:dogs].push(Dog.new(dog))
  end

  def self.walk_dogs
    self.pets[:dogs].each{|dog| dog.mood = "happy"}
    binding.pry
  end

  def self.play_with_cats
    self.pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def self.feed_fish
    self.pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def self.sell_pets
    self.pets.clear
  end

  def self.list_pets
    self.pets[].count.each do |p|
      puts "I have #{p} fish, #{p} dog(s), and #{p} cat(s)"
    end
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

 def self.count
   @@all.count
 end

 def self.reset_all
   @@all.clear
 end
end
