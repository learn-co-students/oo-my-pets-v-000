class Owner
  @@owners = []

  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @@owners << self
    @species = species
    @pets = {cats: [], dogs: [], fishes: []}
  end

  def self.all
    @@owners
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    self.pets[:dogs] << new_dog
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

  def play_with_cats
    self.pets[:cats].each{|cat| cat.mood="happy"}
  end


  def walk_dogs
    self.pets[:dogs].each{|dog| dog.mood="happy"}
  end

  def feed_fish
    self.pets[:fishes].each{|fish| fish.mood="happy"}
  end

  def sell_pets
    self.pets.each_value do |pet_arr|
      pet_arr.each{|pet| pet.mood="nervous"}
    end
    self.pets.clear
  end

  def list_pets
    fish = self.pets[:fishes].size
    dog = self.pets[:dogs].size
    cat = self.pets[:cats].size
    "I have #{fish} fish, #{dog} dog(s), and #{cat} cat(s)."
  end
end
