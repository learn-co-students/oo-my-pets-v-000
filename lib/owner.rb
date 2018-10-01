class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def species
    @species
  end

  def say_species
    result = "I am a #{@species}."
  end

  def name
    @name
  end

  def pets
    @pets
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each_value do |pet_type|
      pet_type.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets =  {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    fish = @pets[:fishes].length
    cats = @pets[:cats].length
    dogs = @pets[:dogs].length
    return "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end


end
