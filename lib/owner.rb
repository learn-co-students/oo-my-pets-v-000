class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @@all << self
    
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

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
    @pets[:dogs].map! {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].map! {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].map! {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each do |specie, pets_of_that_specie_array|
      pets_of_that_specie_array.each {|pet| pet.mood = "nervous"}
      pets_of_that_specie_array.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end
end