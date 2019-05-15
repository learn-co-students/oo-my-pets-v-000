class Owner
  attr_accessor :owner, :fish, :cat, :dog, :pets, :name
  attr_reader :species

  @@all = []

  def initialize(owner)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    all.count
  end

  def self.reset_all
    all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    pets[:fishes] << new_fish
    # pets[:fishes]
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    pets[:dogs] << new_dog
  end

  def walk_dogs
    pets[:dogs][0].mood=("happy")
  end

  def play_with_cats
    pets[:cats][0].mood=("happy")
  end

  def feed_fish
    pets[:fishes][0].mood=("happy")
  end

  def sell_pets
    pets.each {|pets| [:pets.clear}
    # pets.each do |o|
    #   o.mood=("nervous")
    #   end
  end
end
