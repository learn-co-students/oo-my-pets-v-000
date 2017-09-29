class Owner
  attr_accessor :name
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
    @pets[:fishes] = [].concat([new_fish])
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] = [].concat([new_cat])
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] = [].concat([new_dog])
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
    # @pets.each do |key|
    #   key.each do |array|
    #     array.each do |index|
    #       index.mood = "nervous"
    #       index.delete
    #     end
    #   end
    # end
  end

  def pets
    @pets
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
