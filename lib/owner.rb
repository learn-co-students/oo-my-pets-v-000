class Owner

  #Class Variables/Methods
  @@owners = []

  def self.all
    @@owners
  end

  def self.count
    @@owners.length
  end

  def self.reset_all
    @@owners.clear
  end

  attr_accessor :name
  attr_reader :species
  attr_accessor :pets
  
  #Instance variables/methods
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => [],
    }
    @@owners << self
  end

  def say_species
    return "I am a #{@species}."
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
    @pets [:dogs].each{|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets [:cats].each{|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets [:fishes].each{|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |species,pets|
      pets.each{|pet| pet.mood = "nervous"}
      pets.clear
    end
  end

  def list_pets
    return "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end