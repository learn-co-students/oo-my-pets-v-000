class Owner
  # code goes here
attr_accessor :name, :pets
attr_reader :species

 #class methods
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  #instance methods
  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each {|doggo| doggo.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|kitty| kitty.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  #hate this method
  def sell_pets
    @pets.each do |species, pet_list|
      pet_list.each do |pet|
        pet.mood = "nervous"
      end
      pet_list.clear
    end
  end

  def list_pets
    pet_list = "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."

  end

end
