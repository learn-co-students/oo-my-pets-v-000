class Owner
  # code goes here
  attr_reader :species
  attr_accessor :name, :pets, :fish, :dog, :cat


  @@all = []
  #@count = 0

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def species
    @species
  end

  def say_species
    "I am a human."
  end

  def name=(name)
    @name = name
  end

  def pets
    pets = {:fishes => [], :dogs => [], :cats => []}
  end


  def buy_fish
    
  end

  def buy_cat


  end

  def buy_dog
  end

  def walk_dogs
  end

  def play_with_cats
  end

  def feed_fish
  end

  def sell_pets
  end

  def list_pets
  end

end
