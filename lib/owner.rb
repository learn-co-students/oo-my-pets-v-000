class Owner
  attr_accessor :name, :pets

  @@all = []
  #@@owners = 0
  @@count = 0

  def initialize(name)
  @pets = {fishes: [], cats: [], dogs: []}
  @name = name
  @@all << self
  #@@owners += 1
  @@count += 1
  @species = "human"
  #@mood = mood
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = 0
  end

  def species
    @species
  end

  def say_species
    "I am a human."
  end

  def name
    @name.dup.freeze
  end

  def pets
    @pets
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
    @pets[:dogs].each do |d|
      d.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |c|
      c.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |f|
      f.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each do |pet|
         pet.mood = "nervous"
          end
        end
        @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
