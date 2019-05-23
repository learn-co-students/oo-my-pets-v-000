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
    name = Fish.new(name)
    pets[:fishes] << name
    # pets[:fishes]
  end

  def buy_cat(name)
    name = Cat.new(name)
    pets[:cats]<< name
    # pets[:cats]
  end

  def buy_dog(name)
    name = Dog.new(name)
    pets[:dogs] << name
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
  # sellpets = []
  buy_cat(name)
  buy_dog(name)
  buy_fish(name)
  pets.select { |key, value| [value].select { |o| o.mood="happy" } }

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

  # binding.pry
end
