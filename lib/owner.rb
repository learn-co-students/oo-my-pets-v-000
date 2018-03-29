class Owner

attr_accessor :pets, :name
attr_reader :species

@@all = []

# Instance Methods

  def initialize(species, name = nil)
  # can initialize an owner
  # initializes with a species
  # can't change its species
  # can have a name
  # is initialized with a pets attribute as a hash with 3 keys
    @species = species
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  def say_species
  #can say its species
    "I am a #{species}."
  end

  def buy_fish(name)
  # buy a fish that is an instance of the Fish class
  # knows about its fishes
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def buy_cat(name)
  # can buy a cat that is an instance of the Cat class
  # knows about its cats
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
  # can buy a dog that is an instance of the Dog class
  # knows about its dogs
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
  # walks the dogs which makes the dogs' moods happy
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
  # plays with the cats which makes the cats moods happy
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
  # feeds the fishes which makes the fishes' moods happy
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
  # can sell all its pets, which make them nervous
    pets.each do |type, pet_instances|
      pet_instances.each do |pet|
        pet.mood = "nervous"
    end
    pet_instances.clear
  end
  end

  def list_pets
  # can list off its pets
    fish_num = pets[:fishes].count
    dog_num = pets[:dogs].count
    cat_num = pets[:cats].count

    "I have #{fish_num} fish, #{dog_num} dog(s), and #{cat_num} cat(s)."
  end

  # Class Methods

    def self.all
    # keeps track of the owners that have been created
      @@all
    end

    def self.count
    # can count how many owners have been created
      @@all.count
    end

    def self.reset_all
    # can reset the owners that have been created
      @@all.clear
    end

end
