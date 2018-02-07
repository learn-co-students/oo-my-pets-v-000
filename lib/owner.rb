class Owner
  @@all
  @@all = []

  attr_reader :species
  attr_accessor :name, :pets


  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
    @pets[:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species_name , species_array|
      species_array.each{|pet| pet.mood = "nervous"}
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    f = @pets[:fishes].length
    c = @pets[:cats].length
    d = @pets[:dogs].length
    "I have #{f} fish, #{d} dog(s), and #{c} cat(s)."
  end

end
