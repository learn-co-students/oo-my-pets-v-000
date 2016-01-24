class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
      @pets[:dogs].each {|dog| dog.mood = "nervous"}
      @pets[:cats].each {|cat| cat.mood = "nervous"}
      @pets[:fishes].each {|fish| fish.mood = "nervous"}
      @pets.each {|type,pets| pets.clear}
  end

  def list_pets
    fishcount = 0
    catcount = 0
    dogcount = 0
    @pets[:dogs].each {|dog| dogcount += 1}
    @pets[:cats].each {|cat| catcount += 1}
    @pets[:fishes].each {|fish| fishcount += 1}
    return "I have #{fishcount} fish, #{dogcount} dog(s), and #{catcount} cat(s)."
  end

end