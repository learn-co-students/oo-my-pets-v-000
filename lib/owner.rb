class Owner
  attr_accessor :name, :pets

  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def initialize(name)
    @name = name
    @species = "human"
    self.pets_init
    @@all << self
  end

  def pets_init
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def species
    @species.dup.freeze
  end

  def say_species
    "I am a #{species}."
  end

  def buy_critter(critter, symbol, name)
    new_critter = critter.new(name)
    self.pets[symbol] << new_critter
  end

  def buy_fish(name)
    buy_critter(Fish, :fishes, name)
  end

  def buy_dog(name)
    buy_critter(Dog, :dogs, name)
  end

  def buy_cat(name)
    buy_critter(Cat, :cats, name)
  end

  def make_critters_mood(symbol, mood)
    self.pets[symbol].each {|pet| pet.mood = mood} unless pets[symbol].nil?
  end

  def walk_dogs
    make_critters_mood(:dogs, "happy")
  end

  def play_with_cats
    make_critters_mood(:cats, "happy")
  end

  def feed_fish
    make_critters_mood(:fishes, "happy")
  end

  def sell_pets
    self.pets.each_key do |critter|
      make_critters_mood(critter, "nervous")
    end
    self.pets_init
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end


end
