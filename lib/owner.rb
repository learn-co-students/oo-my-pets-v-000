class Owner
  attr_accessor :name, :pets

  @@all = []
  @@count = 0

  def initialize(name)
    @@all << self
    @@count += 1
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
  end

  def self.count=(count)
    @@count = count
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    self.count = 0
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_dog(name)
    dog = Dog.new(name)
    self.pets[:dogs] << dog
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end

  def walk_dogs
    self.pets.each do |pets, array|
      if pets == :dogs
        array.collect {|dog| dog.mood = "happy"}
      end
    end
  end

  def play_with_cats
    self.pets.each do |pets, array|
      if pets == :cats
        array.collect {|cat| cat.mood = "happy"}
      end
    end
  end

  def feed_fish
    self.pets.each do |pets, array|
      if pets == :fishes
        array.collect {|fish| fish.mood = "happy"}
      end
    end
  end

  def sell_pets
    self.pets.each do |pets, array|
      array.collect {|pets| pets.mood = "nervous"}
      array.clear
    end
  end

  def list_pets
    count = self.pets.dup
    count.collect do |pets, array|
      case pets
      when :fishes
        count[:fishes] = array.length
      when :dogs
        count[:dogs] = array.length
      when :cats
        count[:cats] = array.length
      end
    end
    "I have #{count[:fishes]} fish, #{count[:dogs]} dog(s), and #{count[:cats]} cat(s)."
  end


end
