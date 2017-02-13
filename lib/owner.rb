class Owner
  @@all = []
  attr_accessor :name, :pets

  def initialize(species)
      @species = species
      @pets = {:fishes => [], :dogs => [], :cats => []}
      @@all << self
  end

  def self.count
    @@all.length
  end
  def self.all
    @@all
  end
  def species
    @species.dup.freeze
  end

  def say_species
    "I am a #{@species}."
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
    @pets.values.flatten.each do |pet|
      pet.mood = "nervous"
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    fish = @pets[:fishes].count
    dogs = @pets[:dogs].count
    cats = @pets[:cats].count
    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

  def self.reset_all
    @@all = []
  end

end
