class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    Owner.all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    new_fish.set_owner = self
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    new_cat.set_owner = self
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    new_dog.set_owner = self
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each { |dog| dog.walk }
  end

  def play_with_cats
    self.pets[:cats].each { |cat| cat.play }
  end

  def feed_fish
    self.pets[:fishes].each { |fish| fish.feed }
  end

  def sell_pets
    self.pets.each do |type, pets|
      pets.each do |pet|
        pet.sold
      end
      pets.clear
    end
  end

  def list_pets
    say = "I have "
    say += "#{self.pets[:fishes].count} fish, "
    say += "#{self.pets[:dogs].count} dog(s), "
    say += "and #{self.pets[:cats].count} cat(s)."
  end

end
