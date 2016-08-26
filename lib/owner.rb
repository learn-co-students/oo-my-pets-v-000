class Owner

  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  #Instance Methods

  def initialize(name="")
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    Owner.save(self)
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_pet = Fish.new(name)
    self.pets[:fishes] << new_pet
  end

  def buy_cat(name)
    new_pet = Cat.new(name)
    self.pets[:cats] << new_pet
  end

  def buy_dog(name)
    new_pet = Dog.new(name)
    self.pets[:dogs] << new_pet
  end

  def walk_dogs
    self.pets[:dogs].each do |pet|
      pet.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |pet|
      pet.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |pet|
      pet.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |pet_type, pet_array|
      pet_array.each do |pet|
        pet.mood = "nervous"
      end
      pet_array.clear
    end
  end

  def list_pets
    fish_num = self.pets[:fishes].length
    dog_num = self.pets[:dogs].length
    cat_num = self.pets[:cats].length
    "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."
  end

  #Class Methods

  def self.save(new_owner)
    @@all << new_owner
  end

  def self.count
    @@all.length
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end



end
