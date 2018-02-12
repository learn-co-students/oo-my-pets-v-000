class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
  end
  def self.all
    @@all
  end
  def self.count
    self.all.size
  end
  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end
  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
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
    if !self.pets.values.empty?
      self.pets.values.each do |pets|
          pets.each {|pet| pet.mood= "nervous"}
          pets.clear
        end
      end
  end

  def list_pets
    dog_count = self.pets[:dogs].count
    cat_count = self.pets[:cats].count
    fish_count = self.pets[:fishes].count
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end


end
#
