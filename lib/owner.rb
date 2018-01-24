class Owner
  # code goes here
 #CLASS LEVEL
 attr_accessor :name, :pets
  attr_reader  :species

  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
## INSTANCE METHODS


  def say_species
    "I am a human."
  end


  def buy_fish(new_fish)
       self.pets[:fishes]  << Fish.new(new_fish)
  end

  def buy_cat(new_cat)
       self.pets[:cats]  << Cat.new(new_cat)
  end

  def buy_dog(new_dog)
       self.pets[:dogs]  << Dog.new(new_dog)
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    self.pets.each{|species,pet| pet.each{|pet|pet.mood = "nervous"}}
    self.pets.each{|species,pets| pets.clear}
  end

  def list_pets
     "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end







end
