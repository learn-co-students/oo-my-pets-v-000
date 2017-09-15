require "pry"
class Owner
  # code goes here
  @@all = []
  @@count = 0
  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @pets = {:fishes=>[],:dogs=>[],:cats=>[]}
  end
  attr_accessor :name, :pets
  attr_reader :species

  def self.all
    @@all
  end
  def self.reset_all
    self.all.clear
    @@count = 0
  end
  def self.count
    @@count
  end
  def species
    @species = "human"
  end
  def say_species
    # binding.pry
    "I am a #{species}."
  end
  def pets
    @pets
  end

  def buy_fish(name)
    name = Fish.new(name)
    pets[:fishes] << name

  end
  def buy_cat(name)
    name = Cat.new(name)
    pets[:cats] << name

  end
  def buy_dog(name)
    name = Dog.new(name)
    pets[:dogs] << name

  end
  def walk_dogs
    dogs = []

    pets.map{|k,v|
      if k == :dogs
        dogs = v
      end }

    dogs.map{|dog| dog.mood = "happy"}

  end
  def play_with_cats
    cats = []
    pets.map{|k,v|
      if k == :cats
        cats = v
      end }

    cats.map{|cat| cat.mood = "happy"}
  end

  def feed_fish
    fishes = []
    pets.map{|k,v|
      if k == :fishes
        fishes = v
      end }

    fishes.map{|fish| fish.mood = "happy"}
  end
  def sell_pets
    # binding.pry
     all_pets = pets.clone
     pets.clear

     all_pets.map{|k,v|
        v.each{|data| data.mood = "nervous"}
     }

  end
  def list_pets

     fish_count = pets[:fishes].count
     dog_count = pets[:dogs].count
     cat_count = pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."


  end

end
