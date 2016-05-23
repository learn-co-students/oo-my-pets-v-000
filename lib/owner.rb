class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def initialize(name)
    @name = name
    @species = "human"
    self.class.all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    return "I am a human."
  end

  def buy_fish(fish_name)
    fish_name = Fish.new(fish_name)
    @pets[:fishes] << fish_name
  end

  def buy_cat(cat_name)
    cat_name = Cat.new(cat_name)
    @pets[:cats] << cat_name
  end

  def buy_dog(dog_name)
    dog_name = Dog.new(dog_name)
    @pets[:dogs] << dog_name
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
    @pets.collect do |pet_type, pet|
      pet.collect {|pet| pet.mood = "nervous"}
    end
    self.pets.clear
  end

  def list_pets
    num_fish = self.pets[:fishes].size
    num_dogs = self.pets[:dogs].size
    num_cats = self.pets[:cats].size
    return "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
  end


end
