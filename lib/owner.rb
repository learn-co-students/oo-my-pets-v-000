require 'pry'

class Owner
  attr_accessor :owner, :fish, :cat, :dog, :pets, :name
  attr_reader :species

  @@all = []

  def initialize(owner)
    @owner = owner
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
  #   # self.walk_dogs
  #   # self.play_with_cats
  #   # self.feed_fish
  #   # pets.clear
  #   # pets[:dogs].mood=("nervous")
  #   # pets[:cats].mood=("nervous")
  #   # pets[:fishes].mood=("nervous")
  #
  #   # pets[:dogs][0].mood=("nervous")
    pets.clear
    pets.each { |key, value| pets[key].mood=("nervous") }


    # pets.each { |key, value| [key][0].mood=("nervous") }
  #   # fido = Dog.new("Fido")
  #   # tabby = Cat.new("Tabby")
  #   # nemo = Fish.new("Nemo")
  #   # pets = [fido, tabby, nemo]
  #
  #   # pets.each { |type, pets| pets.clear }
  #   pets.clear
  #   # pets.rassoc(pets)
  #   # h.rassoc(obj)
  #   # pets.each do |type, pets|
  #   #   [:type].mood=("nervous")
  #   # end
  #
  #   # owner.pets = {
  #   #   :dogs => [fido, Dog.new("Daisy")],
  #   #   :fishes => [nemo],
  #   #   :cats => [Cat.new("Mittens"), tabby]
  #   # }
  #
  #
  #   pets.select { |key, value| [key].values_at(0, 0, 1).mood=("nervous") }
  #
  #   # pets.values_at(0, 0, 1).mood=("nervous")
  #
  #   # a.values_at(i1, i2, i3)
  #
  #   # pets.each { |type, pets| pets[:type].each { |o| o.mood=("nervous") } }
  #
  #   # pets.each { |type, pet| pet.mood=("nervous") }
  #
  #   # pets[:dogs].mood=("nervous")
  #   # pets.each { |o| o.mood=("nervous") }
  end

end
