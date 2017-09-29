class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
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

  def say_species
    phrase = "I am a #{@species}."
  end

  def walk_dogs
    @pets[:dogs][-1].mood = "happy"
  end

  def play_with_cats
    @pets[:cats][-1].mood = "happy"
  end

  def feed_fish
    @pets[:fishes][-1].mood = "happy"
  end

  def sell_pets
    @pets.each do |key, array|
      array.each do |index|
        index.mood = "nervous"
      end
      array.clear
    end
  end

  def list_pets
    phrase = "I have #{@pets[:fishes][0..-1].length} fish, #{@pets[:dogs][0..-1].length} dog(s), and #{@pets[:cats][0..-1].length} cat(s)."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end
end
