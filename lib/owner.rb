class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []


  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def list_pets
    return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    fish_array =  @pets[:fishes]
    fish_array << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    cat_array =  @pets[:cats]
    cat_array << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    dog_array =  @pets[:dogs]
    dog_array << new_dog
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

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood=("happy")}

  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood=("happy")}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood=("happy")}
  end

  def sell_pets
    @pets.each do |species_key, species_array|
      species_array.each {|pet| pet.mood=("nervous")}
    end
    @pets.each do |species_key, species_array|
      species_array.clear
    end

  end




end
