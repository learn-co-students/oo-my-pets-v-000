require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species


  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish) #should be a fish instance, not a string
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
    new_fish.owner=(self) unless new_fish.owner == self
    # if new_fish.owner != self
    #   new_fish.owner = self
    # end

  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
    new_cat.owner=(self) unless new_cat.owner == self
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
    new_dog.owner=(self) unless new_dog.owner == self
  end

  def walk_dogs
    self.pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    self.pets.each do |specie, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      self.pets[specie].clear
    end
  end

  def list_pets
    fish_count = self.pets[:fishes].count
    dog_count = self.pets[:dogs].count
    cat_count = self.pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
