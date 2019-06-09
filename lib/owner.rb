class Owner
  # code goes here
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    #initialize pets instance variable to equal empty pets hash w/ keys: fishes, dogs, cats
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@all << self
  end

#Class methods

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

#instance methods
  def species
    @species
  end

  def say_species
    return "I am a #{@species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
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
    #set mood of all pets to "nervous"
    @pets.collect do |pets, array_of_petObjects|
      array_of_petObjects.each do |object|
        object.mood = "nervous"
      end
    end

    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
  end

  def list_pets
    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count
    cat_count = @pets[:cats].count

    return "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
