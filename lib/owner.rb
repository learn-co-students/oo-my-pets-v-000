require 'pry'

class Owner
  attr_accessor :owner, :pets, :name
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
    @@all.count
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

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
    # pets[:fishes]
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats]<< cat
    # pets[:cats]
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
    # pets[:dogs]
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
  # petsale = []
  buy_cat(name)
  # # petsale << c
  #
  buy_dog(name)
  # # petsale << d
  #
  buy_fish(name)
  # petsale << f

  # petsale
  # pets[:dogs][0].mood=("happy")
  pets.each { |key, value| [value].mood=("happy") }
  # # if pets[:dogs]
  #   walk_dogs
  # # elsif pets[:cats]
  #   play_with_cats
  # # else
  #   feed_fish
  # # end
  #
  # pets.each { |key, value| [value].map { |o| o.mood="happy" } }

  # sellpets.each {|o| o.mood = "happy" }
    # pets
    # pets.each { |o| o.mood=("nervous") }

    # self.pets.clear
    # self.pets.each { |o| [o].mood=("nervous") }
  #   # pets[:dogs].mood=("nervous")
  #   # pets[:cats].mood=("nervous")
  #   # pets[:fishes].mood=("nervous")
  #
  #   # pets[:dogs][0].mood=("nervous")
    # pets.clear
    # pets.select { |key, value| [value] }


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
    # pets.each do |type, pets|
    #   [:type].mood=("nervous")
    # end
  #
  #   # owner.pets = {
  #   #   :dogs => [fido, Dog.new("Daisy")],
  #   #   :fishes => [nemo],
  #   #   :cats => [Cat.new("Mittens"), tabby]
  #   # }
  #
  #
    # pets.each do |key, value|
    #   a = [key].values
    #   a.mood=("nervous")
    #   end

      # pets.values_at { |key, value| key.mood = "nervous" }
    # pets.select { |key, value| [key].values_at(0, 0, 1).map { |o| o.mood = "nervous" } }

    # choices = pets.select { |key, value| key.to_s.match(/^choice\d+/) }

    # pets.each { |o| o.mood="happy" }
    # pets


    # pets.values.map { |key, value| [value].mood=("nervous") }
    # pets.clear
    # a = pets.values
    # a.values_at(0, 0, 1)
    # a.map { |o| o.mood = "nervous" }

  #
  #   # a.values_at(i1, i2, i3)
  #
    # pets.each { |type, pets| pets[:type].each { |o| o.mood=("nervous") } }
  #
    # pets.each { |type, pet| pet.mood=("nervous") }
  #
    # pets[:dogs].mood=("nervous")
    # pets.each { |o| o.mood=("nervous") }
  end

  binding.pry
end
