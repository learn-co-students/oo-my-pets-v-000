class Owner
  # code goes here

  @@all = []

  attr_accessor :mood, :pets, :name
  attr_reader :owner, :species

  def initialize(species="human")
    @owner = owner
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species=species
    @name=name
  end

  def self.all
    @@all
    #binding.pry
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
    #binding.pry
  end

  def species
    @species
  end

  def say_species
    return "I am a human."
  end

  def name
    @name
  end

  def buy_fish(fish_name)
    fish_name = Fish.new(fish_name)
    @pets[:fishes] << fish_name
    #binding.pry
  end

  def buy_cat(cat_name)
    cat_name = Cat.new(cat_name)
    @pets[:cats] << cat_name
  end

  def buy_dog(dog_name)
    dog_name = Dog.new(dog_name)
    @pets[:dogs] << dog_name
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |pet|
      #binding.pry
      pet.each do |t|
        for n in 0..(pet.length-1)
          #binding.pry
          pet[1][n].mood="nervous" unless pet[1][n] == nil
        end
      end
    end
    @pets = {}
  end

  def list_pets
    return "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
