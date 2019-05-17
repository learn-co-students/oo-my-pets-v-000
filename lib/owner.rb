#owner will know about all its pets, be able to buy a pet,
#set the name of a pet (which the pet can't change, because that would be weird),
#change a pet's mood through walking, feeding, or playing with it,
#and sell all of its pets (for when it moves to that tiny NYC studio after college)

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  #Class Methods
  def self.all
    @@all
  end

  def self.reset_all
   self.all.clear
  end

  def self.count
    self.all.count
  end

  #Instance Methods
  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes].push(fish)
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats].push(cat)
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs].push(dog)
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
    @pets.each do |type, pets|
      @pets[type].each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    fish_count = @pets[:fishes].count
    dog_count = @pets[:dogs].count
    cat_count = @pets[:cats].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
