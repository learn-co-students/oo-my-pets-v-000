class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all_owners = []
  # @@owner_count = 0
  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all_owners << self
    # @@owner_count += 1
  end

  #Class methods
  def self.all
    @@all_owners
  end

  def self.count
    @@all_owners.size
  end

  def self.reset_all
    @@all_owners.clear
  end

  #instance methods

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    self.pets[:dogs] << new_dog
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
    self.pets.each do |animal_type, pet_array|
      pet_array.each {|pet| pet.mood = "nervous"}
      self.pets[animal_type] = []
    end
  end

  def list_pets
    pet_count = self.pets.collect {|type, pets| pets.size}
    "I have #{pet_count[0]} fish, #{pet_count[2]} dog(s), and #{pet_count[1]} cat(s)."
  end
end
