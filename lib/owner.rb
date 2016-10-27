require "pry"
class Owner
  @@all = []
  attr_accessor :name, :pets

  attr_reader :species
  def self.all
      @@all
  end

  def initialize(species)
      @species = species
      Owner.all << self
      @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.reset_all
      Owner.all.clear
  end

  def self.count
      @@all.count
  end

  def say_species
      "I am a #{self.species}."
  end

  def buy_fish(name)
      self.pets[:fishes]<<Fish.new(name)
  end

  def buy_cat(name)
      self.pets[:cats]<<Cat.new(name)
  end

  def buy_dog(name)
      self.pets[:dogs]<<Dog.new(name)
  end

  def walk_dogs
      self.pets[:dogs].each{|s| s.mood = "happy"}
  end

  def play_with_cats
      self.pets[:cats].each{|s| s.mood = "happy"}
  end

  def feed_fish
      self.pets[:fishes].each{|s| s.mood = "happy"}
  end

  def sell_pets
    pets.each do  |group, subgroup|
        subgroup.each do |pet|
            
            pet.mood= "nervous"
        end
    end
    self.pets.clear
  end

  def list_pets
      "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
