class Owner
  attr_accessor :name, :pets
  attr_reader :species

  def self.all
    @@owners = []
  end

  def initialize(name, species = "human", pets = {:fishes => [], :dogs => [], :cats => []})
    @name = name
    @species = species
    @pets = pets
    @@owners << self
  end

  def self.reset_all
    @@owners = []
  end

  def self.count
    @@owners.count
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each do |instance|
      instance.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].collect do |instance|
      instance.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].collect do |instance|
      instance.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |key, element|
      element.each do |instance|
        instance.mood = "nervous"
      end
    end
    @pets.clear
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
