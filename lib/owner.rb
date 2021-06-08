class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor :cats, :dogs

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    #associations starts here
    @cats = []
    @dogs = []
  end

  def say_species()
    "I am a #{species}."
  end

  def self.all()
    @@all
  end

  def self.count()
    @@all.count
  end

  def self.reset_all()
    @@all = []
  end

  #associations starts here

  def cats()
    @cats
  end

  def dogs()
    @dogs
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat, self)
    if @cats.include?(new_cat) == false
      @cats << new_cat
    end
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog, self)
    if @dogs.include?(new_dog) == false
      @dogs << new_dog
    end
  end

  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
      @dogs.delete(dog)
    end
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
      @cats.delete(cat)
    end
  end

  def list_pets()
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end


end
