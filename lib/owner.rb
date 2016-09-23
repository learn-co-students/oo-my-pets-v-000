class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@owner = []
  @@all = []

  def initialize(species)
    @species = species
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self # appends an instance at instantiation to the @@all []
  end

  def self.all
    @@all # reads how many instances are stored in the @@all []
  end

    def self.count
      @@all.count # returns the number of elements
    end

  def self.reset_all
    @@all.clear # deletes all elements in the @all []
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name) # create a new instance of Fish
    @pets[:fishes] << fish # append to @pets hash
  end

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each do |dog| # iterate over the pets hash that corresponds to the :dogs key
      dog.mood = "happy" # set the dog.mood to "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, animal| # iterate over pets hash extracting fist level key/value
      animal.each do |pet| # iterate over the value, which is an [] and set its .mood property eqaul to "nervous"
        pet.mood = "nervous"
      end
      animal.clear # deletes the content of the [] that was set previously
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
