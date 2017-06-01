class Owner

  attr_accessor :name, :pets

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], dogs: [], cats: []}

  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    self.all.clear
  end

  def species
    @species = "human"
  end

  def say_species
    "I am a #{species}."
  end

  def pets
    @pets
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    @pets[:dogs] << new_dog
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
    @pets.each do |type, pet|
      pet.each do |p|
        p.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    counts = @pets.map{|x,y|[x,y.length]}
    "I have #{counts[0][1]} fish, #{counts[1][1]} dog(s), and #{counts[2][1]} cat(s)."
  end


end
