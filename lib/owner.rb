class Owner
  @@all = [ ]
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:cats => [ ], :dogs => [ ], :fishes => [ ]}
    @@all << self
  end
# Instance methods
  def say_species
    "I am a #{@species}."
  end
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  def buy_cat(name)
     @pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end
  def walk_dogs
    pets[:dogs].each {|d| d.mood = "happy"}
  end
  def play_with_cats
    pets[:cats].each {|c| c.mood = "happy"}
  end
  def feed_fish
    pets[:fishes].each {|f| f.mood = "happy"}
  end
  def sell_pets
    pets.each do |species, pet|
      pet.each {|p| p.mood = "nervous"}
    end
    pets.clear
  end
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
# Class methods
  def self.all
    @@all
  end
  def self.count
    self.all.count
  end
  def self.reset_all
    self.all.clear
  end
end
