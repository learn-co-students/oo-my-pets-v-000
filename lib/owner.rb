class Owner
  attr_accessor :name, :pets, :fishes, :dogs, :cats
  attr_reader :species

  @@all = [];

  def initialize(name)
    @name = name;
    @species = "human";
    @pets = {fishes: [], cats: [], dogs: []};
    self.class.all << self;
  end

  def self.all
    @@all;
  end

  def self.count
    @@all.length;
  end

  def self.reset_all
      self.all.clear;
  end

  def say_species
    "I am a #{@species}.";
  end

  def pets
    @pets;
  end

  def buy_fish(name)
    fish = Fish.new(name);
    pets[:fishes] << fish;
  end

  def buy_dog(name)
    dog = Dog.new(name);
    pets[:dogs] << dog;
  end

  def buy_cat(name)
    cat = Cat.new(name);
    pets[:cats] << cat;
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"};
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"};
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"};
  end

  def sell_pets
    pets.each {|type, pet_array| pet_array.each { |pet| pet.mood = "nervous"}};
    pets.clear;
  end

  def list_pets
    fish_count = 0;
    dog_count = 0;
    cat_count = 0;
    pets[:fishes].each { |fish| fish_count += 1};
    pets[:dogs].each { |dog| dog_count += 1};
    pets[:cats].each { |cat| cat_count += 1};
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end
end
