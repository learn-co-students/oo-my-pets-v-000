class Owner
  attr_accessor :name, :pets
  #Class variable
  @@all = []  

  #initialize method ran every time Owner.new is called
  def initialize(owner)
    @@all << self
    @owner = owner
    @pets = {
      fishes: [],
      dogs: [],
      cats: []
    }
  end

  #Class methods
  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.size
  end

  #Instance methods
  def species
    @owner
  end

  def say_species
    "I am a #{@owner}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    @pets.each {|pet_type, pet_array|
      pet_array.each {|pet|
        pet.mood = "nervous"
      }
    }

    @pets.each {|pet_type, pet_array|
      pet_array.clear
    }
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
















