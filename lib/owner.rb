class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def self.all
    @@all
  end

  def initialize(species)
    @species = species
    @@all << self

    @pets = { fishes: [], dogs: [], cats: [] }
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end



  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    Fish.new(name).tap do |fish|
      pets[:fishes] << fish
    end
  end

  def buy_dog(name)
    Dog.new(name).tap do |dog|
      pets[:dogs] << dog
    end
  end

  def buy_cat(name)
    Cat.new(name).tap do |cat|
      pets[:cats] << cat
    end
  end

  def walk_dogs
    self.pets[:dogs].each{|d| d.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each{|c| c.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each{|f| f.mood = "happy"}
  end

  def sell_pets
    self.pets.values.flatten.each do |pet|
      pet.mood = "nervous"
    end
    self.pets.values.each {|pet_list| pet_list.clear}
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end

end
