require 'pry'
class Owner
  attr_accessor :name, :dogs, :cats, :fishes

  @@all = []
  @pets = {}



  def initialize(name)
    @name = name
    @species = "human"
    @@all<<self
    @pets = {
    :fishes => [],
    :dogs =>  [],
    :cats => []
  }


  end
  def species
    @species.dup.freeze
  end
  def say_species
    "I am a #{@species}."

  end


  def pets
    @pets

  end
  def pets=(hash)
    @pets = hash
  end

  def self.all
    @@all

  end

  def self.count
    self.all.size
  end

  def self.reset_all

    self.all.clear


  end

  def buy_fish(names)

    fish = Fish.new(names)

    #self.fishes = fish


    @pets[:fishes] << fish


  end
  def buy_cat(names)

    cat = Cat.new(names)




    @pets[:cats] << cat


  end
  def buy_dog(names)

    dog = Dog.new(names)



    @pets[:dogs] << dog


  end
  def play_with_cats
    @pets[:cats].each do |val|
      val.mood = "happy"
    end

  end
  def walk_dogs
    @pets[:dogs].each do |val|
      val.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |val|
      val.mood = "happy"
    end
  end
  def sell_pets


    @pets.each do |kind, peties|
      peties.each do |names|
        names.mood = "nervous"
      end
    end
    @pets.clear
    #binding.pry

  end
  def list_pets
    dogs_count = @pets[:dogs].count
    cats_count = @pets[:cats].count
    fishes_count = @pets[:fishes].count

    "I have #{fishes_count} fish, #{dogs_count} dog(s), and #{cats_count} cat(s)."
  end


end
