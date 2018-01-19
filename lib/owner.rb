class Owner

  @@all = []

  attr_reader :species
  attr_accessor :name, :pets


  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.count
    @@all.size
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |x|
      x.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |x|
      x.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |x|
      x.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, name|
      name.each do |x|
        x.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end
