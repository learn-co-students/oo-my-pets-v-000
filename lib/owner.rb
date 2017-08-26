class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.size
  end

  def buy_fish(name)
    new = Fish.new(name)
    @pets[:fishes] << new
  end

  def buy_cat(name)
    new = Cat.new(name)
    @pets[:cats] << new
  end

  def buy_dog(name)
    new = Dog.new(name)
    @pets[:dogs] << new
  end

  def walk_dogs
    @pets[:dogs].each {|pet| pet.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each {|pet| pet.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|pet| pet.mood = "happy"}
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    fish_q = @pets[:fishes].size
    dog_q = @pets[:dogs].size
    cat_q = @pets[:cats].size
    "I have #{fish_q} fish, #{dog_q} dog(s), and #{cat_q} cat(s)." 
  end

end