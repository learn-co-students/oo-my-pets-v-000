class Owner

  @@all = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :cats => [], :dogs => []}
  end

  #Class Methods

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  #Instance Methods

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    @pets[:fishes] << Fish.new(fish_name)
  end

  def buy_dog(dog_name)
    @pets[:dogs] << Dog.new(dog_name)
  end

  def buy_cat(cat_name)
    @pets[:cats] << Cat.new(cat_name)
  end

  def walk_dogs
    @pets.collect do |species, instances|
      if species == :dogs
        instances.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.collect do |species, instances|
      if species == :cats
        instances.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    @pets.collect do |species, instances|
      if species == :fishes
        instances.each do |fish|
          fish.mood = "happy"
        end
      end
    end
  end

  def sell_pets
    @pets.collect do |species, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
  end

  def list_pets
    num_of_dogs = @pets[:dogs].size
    num_of_cats = @pets[:cats].size
    num_of_fish = @pets[:fishes].size
    return "I have #{num_of_fish} fish, #{num_of_dogs} dog(s), and #{num_of_cats} cat(s)."
  end

end
