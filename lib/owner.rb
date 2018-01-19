class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = [] #collection of owners

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  def say_species
    return "I am a #{@species}."
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
    fish.owner = self
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
    cat.owner = self
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
    dog.owner = self
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
    @pets.each do |key, value|
      value.each do |element|
        element.mood = "nervous"
      end
      value.clear #clear array after mood changed for all of them
    end
  end

  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
