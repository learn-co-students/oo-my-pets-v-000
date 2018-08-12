class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(pets)
    @pets = { cats:[],
              dogs: [],
              fishes: [] }
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def species
    @species = "human"
  end

  def say_species
   "I am a human."
  end


  def buy_cat(name)
    catto = Cat.new(name)
    @pets[:cats] << catto
  end

  def buy_dog(name)
    doggo = Dog.new(name)
    @pets[:dogs] << doggo
  end

  def buy_fish(name)
    fisho = Fish.new(name)
    @pets[:fishes] << fisho
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def walk_dogs
    #probably iterate through hash, find dogs, change mood
      @pets[:dogs].each{|h| h.mood = "happy"}
  end

  def play_with_cats
      @pets[:cats].each{|h| h.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|h| h.mood = "happy"}
  end

  def sell_pets
        @pets.each do |h, c_hash|
          c_hash.each do |m|
             m.mood = "nervous"
           end
        end
        @pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
