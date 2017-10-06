class Owner

  attr_accessor :pets, :name
  attr_reader :species
  @@all =[]

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name) #buy a fish that's an instance of the Fish class
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)  #buy a cat that's an instance of the Cat class
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name) #buy a dog that's an instance of the Dog class
    new_dog = Dog.new(dog_name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets #empty @pets hash and set mood of existing pets to 'nervous'
    self.pets.each do |animal, pet|  # sets mood of pets to nervous
      pet.each do |name|
        name.mood = "nervous"
      end
    end

    self.pets.each do |animal, pet| #empties pets from owner's hash @pets
      pet.clear
    end

  end

def list_pets
  fish_count = 0
  dog_count = 0
  cat_count = 0

  self.pets.each do |animal, pet|
    if animal == :fishes
      fish_count = pet.length
    elsif animal == :dogs
      dog_count = pet.length
    else animal == :cats
      cat_count = pet.length
    end
  end

    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

# Class methods

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

end
