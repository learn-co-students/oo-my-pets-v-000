class Owner

  @@owner = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species = "human")
    @species = species
    @@owner << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@owner
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@owner.count
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets.each do |key, value_array|
      if key == :dogs
        value_array.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end

  def play_with_cats
    @pets.each do |key, value_array|
      if key == :cats
        value_array.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end

  def feed_fish
    @pets.each do |key, value_array|
      if key == :fishes
        value_array.each do |fish|
          fish.mood = "happy"
        end
      end
    end
  end

  def sell_pets
    @pets.each do |key, value_array|
      value_array.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    num_fish = @pets[:fishes].count
    num_dogs = @pets[:dogs].count
    num_cats = @pets[:cats].count
    phrase = ("I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s).")
    phrase
  end

end
