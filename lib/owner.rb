class Owner
  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self

    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }

  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear

  end

  def self.count
    @@all.length
  end

  def say_species
    my_species = "I am a #{@species}."
  end

  def buy_fish(pet_name)
     new_fish = Fish.new(pet_name)
     @pets[:fishes] << new_fish
  end

  def buy_dog(pet_name)
     new_dog = Dog.new(pet_name)
     @pets[:dogs] << new_dog
  end

  def buy_cat(pet_name)
     new_cat = Cat.new(pet_name)
     @pets[:cats] << new_cat
  end

  def walk_dogs
    @pets[:dogs].collect do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].collect do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect do |fish|
      fish.mood = "happy"
    end
  end

  def nervous_dogs
    @pets[:dogs].collect do |dog|
      dog.mood = "nervous"
    end
  end

  def nervous_cats
    @pets[:cats].collect do |cat|
      cat.mood = "nervous"
    end
  end

  def nervous_fish
    @pets[:fishes].collect do |fish|
      fish.mood = "nervous"
    end
  end

  def sell_pets
    self.nervous_fish
    self.nervous_cats
    self.nervous_dogs
    @pets.clear
  end

  def list_pets
    pets_listed = "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end
end
