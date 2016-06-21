class Owner
  attr_reader :species
  attr_accessor :pets, :name

  @@all = []

  def initialize(name)
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @name = name
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    self.pets[:fishes] << new_fish
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    self.pets[:dogs] << new_dog
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    self.pets[:cats] << new_cat
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

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    self.pets.each {|type, pets| pets.clear}
  end

  def list_pets
     fish_title = "fish"
     fish_amt = @pets[:fishes].size
     dog_title = "dog"
     dog_amt = @pets[:dogs].size
     cat_title = "cat"
     cat_amt = @pets[:cats].size

   "I have #{fish_amt} #{fish_title}, #{dog_amt} #{dog_title}(s), and #{cat_amt} #{cat_title}(s)."
  end

end
