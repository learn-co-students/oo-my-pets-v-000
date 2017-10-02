class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def species
    @species.dup.freeze
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].collect {|d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].collect {|d| d.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].collect {|d| d.mood = "happy"}
  end

  def sell_pets
    @pets.collect do |species, individuals|
      individuals.collect { |i| i.mood = "nervous"}
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def list_pets
    fish_count = 0
    cat_count = 0
    dog_count = 0
    @pets[:fishes].each {|f| fish_count += 1}
    @pets[:dogs].each {|f| dog_count += 1}
    @pets[:cats].each {|f| cat_count += 1}
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end


end
