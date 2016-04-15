class Owner
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = { fishes: [], dogs: [], cats: [] }
    @@all << self
  end

  ##### CLASS METHODS #####

  def self.all
    @@all
  end

  def self.reset_all
    all.clear
  end

  def self.count
    all.size
  end

  ##### INSTANCE METHODS #####

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each { |d| d.mood = "happy" }
  end

  def play_with_cats
    self.pets[:cats].each { |c| c.mood = "happy" }
  end

  def feed_fish
    self.pets[:fishes].each { |f| f.mood = "happy" }
  end

  def sell_pets
    self.pets.each_value do |collection_of_pets|
      collection_of_pets.each { |p| p.mood = "nervous" }
      collection_of_pets.clear
    end
  end

  def list_pets
    fish_count = 0
    dog_count = 0
    cat_count = 0

    self.pets.each do |pet_type, collection_of_pets|
      if pet_type == :fishes
        fish_count = collection_of_pets.size
      elsif pet_type == :dogs
        dog_count = collection_of_pets.size
      elsif pet_type == :cats
        cat_count = collection_of_pets.size
      end
    end
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end




















