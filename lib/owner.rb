class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(species, name = nil)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
    @name = name
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
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

def walk_dogs
  @pets[:dogs][0].mood = "happy"
end

def play_with_cats
  @pets[:cats][0].mood = "happy"
end

def feed_fish
  @pets[:fishes][0].mood = "happy"
end

def list_pets
  x = @pets[:fishes]
  y = @pets[:dogs]
  z = @pets[:cats]
  return "I have #{x.length} fish, #{y.length} dog(s), and #{z.length} cat(s)."
end

def sell_pets
  @pets[:dogs].each do |d|
    d.mood = "nervous"
  end
  @pets[:fishes].each do |f|
    f.mood = "nervous"
  end
  @pets[:cats].each do |c|
    c.mood = "nervous"
  end
  @pets.clear
end


end
